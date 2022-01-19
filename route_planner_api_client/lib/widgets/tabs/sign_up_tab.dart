import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:route_planner_api_client/constants/app_colors.dart';
import 'package:route_planner_api_client/services/user_service.dart';
import 'package:route_planner_api_client/widgets/widgets/app_blue_button.dart';
import 'package:route_planner_api_client/widgets/widgets/app_text_form_field.dart';


class SignUpTab extends StatefulWidget {
  const SignUpTab({Key? key}) : super(key: key);

  @override
  _SignUpTabState createState() => _SignUpTabState();
}

class _SignUpTabState extends State<SignUpTab> {
  Future _signUpTap(BuildContext context) async {
  UserService service = UserService();
     var response = await service.createUserWithEmailAndPassWord("kyalomike", "password","Mikonski");

     if (kDebugMode) {
       print(response);
     }

     if(response.header.code == 422){
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.header.message)));
     }

  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          loginScreenAvatar(),
          const SizedBox(
            height: 30,
          ),
          const AppTextFormFieldWithNoBorder(label_text: "Username",),
          const AppTextFormFieldWithNoBorder(label_text: "Email",),
          const AppTextFormFieldWithNoBorder(label_text: "Password",),
          const AppTextFormFieldWithNoBorder(label_text: "Confirm Password",),
          const SizedBox(
            height: 30,
          ),

          AppBlueButton(onTap:() => _signUpTap(context), width: MediaQuery.of(context).size.width, title: "SIGN UP")
        ],
      ),
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
          child: RichText(
              text: const TextSpan(
                  text: "Hi,",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    letterSpacing: 1.5,
                  ),
                  children: [
                    TextSpan(
                        text: "\nSign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5,
                        ))
                  ])),
        ),
        const CircleAvatar(
          backgroundColor: colorBlue,
          radius: 30,
        )
      ],
    ),
  );
}