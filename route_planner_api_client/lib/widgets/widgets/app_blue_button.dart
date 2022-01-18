import 'package:flutter/material.dart';
import 'package:route_planner_api_client/constants/app_colors.dart';
class AppBlueButton extends StatelessWidget {
  final onTap;

  final double width;
  final String title;
  const AppBlueButton({Key? key, required this.onTap, colorPurple, required this.width, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            color: colorPurple
          ),
          child:  Center(
            child: Text(title, style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16,
              letterSpacing: 1.5,
              fontFamily: "Avenir",
            ),),
          ),
        ),
      ),
    );
  }
}
