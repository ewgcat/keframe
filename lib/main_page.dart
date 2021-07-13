import 'package:flutter/material.dart';

import 'list_view_page.dart';
import 'list_view_page2.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> _tabTitles = ["优化的列表", "未优化的列表"];
  List<Widget> _contentWidgets = [];
  @override
  void initState() {
    super.initState();
    _contentWidgets.add(ListViewPage());
    _contentWidgets.add(ListViewPage2());
    _tabController = TabController(length: _tabTitles.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("keframe渲染效果展示"),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.greenAccent,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.greenAccent,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: _tabTitles.map((e) => Tab(text: e)).toList(),
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: _contentWidgets,
            ))
          ],
        ));
  }
}
