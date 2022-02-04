import 'package:flutter/material.dart';
import 'package:time_line/body_timeline.dart';
import 'package:time_line/header_timeline.dart';
import 'package:timelines/timelines.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Timeline',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
          title: HeaderTimeline(departure: "Roon",destination: "DongHoi",time: "50min"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
              child: Column(
                children: const [
                  TimeLineBody()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
