import 'package:flutter/material.dart';

import 'MyDrawer.dart';


// BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
//           BottomNavigationBarItem(icon: Icon(Icons.business), title: Text("Business")),
//           BottomNavigationBarItem(icon: Icon(Icons.school), title: Text("School"))
//         ],
        
//         currentIndex: _selectIndex,
//         fixedColor: Colors.blue,
//         onTap: _onItemTappd,
//       )

class ScaffoldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScaffoldState();
}

class ScaffoldState extends State<ScaffoldDemo> with SingleTickerProviderStateMixin {


  int _selectIndex = 1;

  _onItemTappd(int index) {
    setState(() {
      _selectIndex = index;
      print("选择了$index");
    });
  }

 _onAdd() {
   print("add");
 }

 List tabs = ["news", "history", "picture"];
 
 TabController _tabController;

@override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() { 
      print(_tabController.offset);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Name"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: () {})
        ],
        leading: Builder(builder: (context) {
          return IconButton(
            icon : Icon(Icons.dashboard, color: Colors.white),
            onPressed: () => {
              Scaffold.of(context).openDrawer(),
            },
          );
        }),
        bottom: TabBar(
          tabs: tabs.map((e) => Tab(text: e)).toList(),
          controller: _tabController,
        ),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            SizedBox(),
            IconButton(icon: Icon(Icons.business), onPressed: () {})
          ],
        ),
      ),
      body: Container(
        child: TabBarView(
          controller: _tabController,
          children: tabs.map((e) {
            return Container(
              alignment: Alignment.center,
              child: Text(e, textScaleFactor: 5,),
            );
          }).toList(), 
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){}
      ),
    );
  }

}