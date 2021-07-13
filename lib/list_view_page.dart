import 'package:flutter/material.dart';
import 'package:keframe/frame_separate_widget.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State {
  ScrollController _scrollController = ScrollController();

  bool _atEdge = false;
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
        itemBuilder: (context, index) {
          String model = goodsList[index];
          return FrameSeparateWidget(
              index: index,
              placeHolder: Container(
                height: 40,
                color: Colors.greenAccent,
                padding: EdgeInsets.only(left: 16, top: 16),
              ),
              child: Container(
                  height: 40,
                  color: Colors.greenAccent,
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text('子ListView 条目$model')));
        });
  }
}
