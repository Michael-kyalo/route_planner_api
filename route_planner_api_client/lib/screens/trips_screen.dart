import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:route_planner_api_client/constants/app_colors.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({Key? key}) : super(key: key);

  @override
  _TripScreenState createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: colorBlue,
            ),
            Positioned(
                bottom: 10,
                left: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: const Text("My Trips",
                              style: TextStyle(
                                color: colorWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1.5,
                              )),
                        ),
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: colorWhite,
                        )
                      ],
                    ),
                  ),
                ))
          ],
        )
      ],
    );
  }
}
