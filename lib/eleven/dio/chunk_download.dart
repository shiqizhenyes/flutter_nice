import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class ChunkDownload extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChunkDownloadState();
}

class _ChunkDownloadState extends State<ChunkDownload> {

  Future downloadWithChunk(url, savePath , {ProgressCallback progressCallback})
  async{
    const firstChunkSize = 102;
    const maxChunk = 3;
    int total = 0;
    var dio = Dio();
    var progress = <int>[];
    createCallback(no) {
      return (int received, _) {
        progress[no] = received;
        if (progressCallback != null && total != 0) {
          progressCallback(progress.reduce((a, b) => a + b), total);
        }
      };
    }

    Future<Response> downloadChunk(url, start, end, no) async{
      progress.add(0);
      --end;
      return dio.download(
        url,
        savePath+ "temp$no",
        onReceiveProgress: createCallback(no),
        options: Options(
          headers: {"range": "bytes=$start-$end"}
        )
      );
    }

    Response response = await downloadChunk(url, 0, firstChunkSize, 0);

    if (response.statusCode == 206) {
      total = int.parse(response.headers.value(HttpHeaders.contentRangeHeader)
          .split("/").last);
      int reserved = total - int.parse(response.headers
          .value(HttpHeaders.contentLengthHeader));
      int chunk = (reserved / firstChunkSize).ceil() + 1;
      if(chunk >1) {
        int chunkSize = firstChunkSize;
        if(chunk > maxChunk + 1) {
          chunk = maxChunk + 1;
          chunkSize = (reserved / maxChunk).ceil();
        }
        var futures = <Future>[];
        for(int i = 0; i < maxChunk; ++i) {
          int start = firstChunkSize + i * chunkSize;
          futures.add(downloadChunk(url, start, start + chunkSize, i + 1));
        }
        await Future.wait(futures);
      }
    }
  }

  var _total = 0;
  var _receive = 0;

  void _startDownload() async{
    var url = "http://download.dcloud.net.cn/HBuilder.9.0.2.macosx_64.dmg";
    String path = (await getApplicationDocumentsDirectory()).path
        + "HBuilder.9.0.2.macosx_64.dmg";
    await downloadWithChunk(url, path, progressCallback: (receive, total) {
      print("$total   $receive");
      setState(() {
        _total = total;
        _receive = receive;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChunkDownload"),
      ),
      body: Center(
        child: Text("total $_total download $_receive"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _startDownload();
      }),
    );
  }
}