import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fps_monitor/util/collection_util.dart';
import 'package:fps_monitor/widget/custom_widget_inspector.dart';

import 'main_page.dart';

void main() {
  kFpsInfoMaxSize = 200;
  runApp(MyApp());
}

GlobalKey<NavigatorState> globalKey = GlobalKey();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance!.addPostFrameCallback(
        (t) => overlayState = globalKey.currentState!.overlay!);
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: globalKey,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      builder: (ctx, child) => CustomWidgetInspector(
        child: child!,
      ),
      home: MainPage(),
    );
  }
}
