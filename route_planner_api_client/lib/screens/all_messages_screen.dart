import 'package:flutter/material.dart';
import 'package:route_planner_api_client/protos/trip.pb.dart';

class AllMessagesScreen extends StatefulWidget {
  final List<Trip> allTrips;
  const AllMessagesScreen({Key? key, required this.allTrips}) : super(key: key);

  @override
  _AllMessagesScreenState createState() => _AllMessagesScreenState();
}

class _AllMessagesScreenState extends State<AllMessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: widget.allTrips.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [Text(widget.allTrips[index].title)],
              );
            }),
      ),
    );
  }
}
