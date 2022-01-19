import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:route_planner_api_client/constants/app_colors.dart';
import 'package:route_planner_api_client/screens/home_screen.dart';
import 'package:route_planner_api_client/services/trip_service.dart';
import 'package:route_planner_api_client/widgets/widgets/app_blue_button.dart';
import 'package:route_planner_api_client/widgets/widgets/app_text_form_field.dart';

class SignInTab extends StatefulWidget {
  const SignInTab({Key? key}) : super(key: key);

  @override
  _SignInTabState createState() => _SignInTabState();
}

class _SignInTabState extends State<SignInTab> {


  @override
  Widget build(BuildContext context) {
    Future _signInTap(BuildContext context) async {


      if (kDebugMode) {
        print("Getting all Trips");
      }
      TripService service = TripService();
      var response = await service.getAllTrips();

      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> HomeScreen(allTrips: response.trips)));


    }
    return Column(
      children: [
        loginScreenAvatar(),
        const SizedBox(
          height: 30,
        ),
        const AppTextFormFieldWithNoBorder(label_text: "Password"),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text("Forgot Password?", style: TextStyle(
              color: colorBlue,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: "Avenir",
              letterSpacing: 1.3,
            ),),
          ),
        ),
        const SizedBox(
          height: 30,
        ),

        AppBlueButton(onTap:() => _signInTap(context), width: MediaQuery.of(context).size.width, title: "SIGN IN")
      ],
    );
  }
}

Widget loginScreenAvatar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(
                      text: "Welcome back,",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        letterSpacing: 1.5,
                      ),
                      children: [
                    TextSpan(
                        text: "\nMikonksi",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5,
                        ))
                  ])),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Oh no, this isn't me!",
                style: TextStyle(
                  color: colorBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.3,
                ),
              )
            ],
          ),
        ),
        const CircleAvatar(
          backgroundColor: colorBlue,
          radius: 30,
        )
      ],
    ),
  );
}
