import 'package:flutter/material.dart';

class HeaderTimeline extends StatefulWidget {
  String departure;
  String destination;
  String time;
  HeaderTimeline({required this.departure, required this.destination, required this.time});

  @override
  _HeaderTimelineState createState() => _HeaderTimelineState();
}

class _HeaderTimelineState extends State<HeaderTimeline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius : BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children:  [
                const Icon(Icons.directions_bus_outlined,size: 35,color: Colors.white),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(widget.departure,style: const TextStyle(color: Colors.white,fontSize: 17)),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.blue),
                const SizedBox(width: 10),
                const Icon(Icons.directions_bus_outlined,size: 35,color: Colors.white),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red[300],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(widget.destination,style: const TextStyle(color: Colors.white,fontSize: 17)),
                ),
              ],
            )
          ),
          Text(widget.time,style: const TextStyle(color: Colors.white,fontSize: 15))
        ],
      ),
    );
  }
}