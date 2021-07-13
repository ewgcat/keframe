import 'package:flutter/material.dart';

class ListViewPage2 extends StatefulWidget {
  @override
  _ListViewState2 createState() => _ListViewState2();
}

class _ListViewState2 extends State {
  List<String> goodsList = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 40; i++) {
      goodsList.add('${i}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: goodsList.length,
        itemBuilder: (BuildContext context, int index) {
          String model = goodsList[index];
          return Container(
              height: 40,
              color: Colors.greenAccent,
              padding: EdgeInsets.only(left: 16, top: 16),
              child: Text('子ListView 条目$model'));
        });
  }
}
