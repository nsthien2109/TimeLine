import 'package:flutter/material.dart';
import 'package:time_line/data/data.dart';
import 'package:timelines/timelines.dart';

class TimeLineBody extends StatefulWidget {
  const TimeLineBody({ Key? key }) : super(key: key);

  @override
  _TimeLineBodyState createState() => _TimeLineBodyState();
}

List<TimeLineModel> timeLine = [
  TimeLineModel(pointName: "Đã khởi hành từ Roon", status: 1),
  TimeLineModel(pointName: "Đã đến ga Ba đồn", status: 1),
  TimeLineModel(pointName: "Đang khởi hành từ ga Ba đồn", status: 1),
  TimeLineModel(pointName: "Đã đến ga Bố Trạch", status: 1),
  TimeLineModel(pointName: "Đang khởi hành từ ga Bố trạch", status: 0),
  TimeLineModel(pointName: "Đã đến Sân Bay Đồng Hới", status: 0),
  TimeLineModel(pointName: "Đang vào bến xe Đồng Hới", status: 0),
  TimeLineModel(pointName: "Đã tới Đồng Hới", status: 0)
];

class _TimeLineBodyState extends State<TimeLineBody> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height - 120,
      width: MediaQuery.of(context).size.width,
      child: FixedTimeline.tileBuilder(      
        theme: TimelineThemeData(  
          color: Colors.purpleAccent,
          direction: Axis.vertical,
          indicatorPosition: 5
        ),
        builder: TimelineTileBuilder.connectedFromStyle(
          itemExtent: 80,
          contentsAlign: ContentsAlign.reverse,
            oppositeContentsBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(timeLine[index].pointName),
          ),
          contentsBuilder: (context, index) => Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: timeLine[index].status == 1 ?  const Text('Đã Qua',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)) : const Text('Chưa Qua',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
            ),
          ),
          connectorStyleBuilder: (context, index) => timeLine[index].status == 1 ?  ConnectorStyle.solidLine : ConnectorStyle.dashedLine,
          indicatorStyleBuilder: (context, index) => timeLine[index].status == 1 ? IndicatorStyle.dot : IndicatorStyle.outlined,
          itemCount: timeLine.length,
        ),
        )
    );
  }
}