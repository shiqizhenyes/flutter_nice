import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';



class ErrorReport {

  void collectLog() {
    print("收集日志");
  }

  void reportErrorDetail(FlutterErrorDetails details) {
    print("上报日志");
  }

//  FlutterErrorDetails _debugReportException(
//      String context,
//      dynamic exception,
//      StackTrace stack, {
//        InformationCollector informationCollector
//      }) {
//    //构建错误详情对象
//    final FlutterErrorDetails details = FlutterErrorDetails(
//      exception: exception,
//      stack: stack,
//      library: 'widgets library',
//      context: context,
//      informationCollector: informationCollector,
//    );
//    //报告错误
//    FlutterError.reportError(details);
//    return details;
//  }
//
  
  FlutterErrorDetails makeErrorDetail(Object obj, StackTrace stackTrace) {
//    var details = _debugReportException(, exception, stack)
    return null;
  }

//  void testReport() {
//    FlutterError.onError = (FlutterErrorDetails details) {
//      reportErrorDetail(details);
//    };
//    runZoned(() => runApp(MyApp()),
//        zoneSpecification: ZoneSpecification(
//          print: (Zone self, ZoneDelegate delegate, Zone zone, String line) {
//            collectLog();
//          },
//        ),
//        onError: (Object obj, StackTrace stackTrace) {
//          var details = makeErrorDetail(obj, stackTrace);
//          reportErrorDetail(details);
//        });
//  }
}

