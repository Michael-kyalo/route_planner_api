import 'package:flutter/material.dart';
import 'package:route_planner_api_client/constants/app_colors.dart';
import 'package:route_planner_api_client/widgets/tabs/sign_in_tab.dart';
import 'package:route_planner_api_client/widgets/tabs/sign_up_tab.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children:  [
              authBanner(context),
              Expanded(
                child: DefaultTabController(length: 2, child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: colorPurple,
                    elevation: 0.0,
                    bottom:  const TabBar(
                      indicatorColor: colorOrange,
                      tabs: [
                        Tab(text: "Sign In",),
                        Tab(text: "Sign Up",)

                    ],),

                  ),
                  body: const TabBarView(
                    children: [
                      SignInTab(),
                      SignUpTab()
                    ],
                  ),
                )),
              )

            ],
          ),
        ),
      ),
    );
  }
}
Widget authBanner(BuildContext context) {
  return   Container(
      width:  MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      color: colorPurple,
  );
}