import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_9/util/button/btn.dart';

import '../../util/text_filed.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var name = TextEditingController();
  var phone = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xE0264150),
      appBar: AppBar(
        backgroundColor: const Color(0xE0264150),
        elevation: 0,
        scrolledUnderElevation: 0,
        toolbarOpacity: 1,
      ),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          CusTextFiled(
            textController: name,
            labelText: "Name",
            icon: const Icon(
              Icons.drive_file_rename_outline_rounded,
              color: Colors.orangeAccent,
            ),
          ),
          CusTextFiled(
              textController: phone,
              labelText: "Phone Number",
              icon: const Icon(
                Icons.phone,
                color: Colors.orangeAccent,
              )),
          CusTextFiled(
              textController: email,
              labelText: "Email",
              icon: const Icon(
                Icons.email,
                color: Colors.orangeAccent,
              )),
          CusTextFiled(
              textController: password,
              labelText: "Password",
              icon: const Icon(
                Icons.password,
                color: Colors.orangeAccent,
              )),
          CusTextFiled(
              textController: confPass,
              labelText: "Conf. Password",
              icon: const Icon(
                Icons.password,
                color: Colors.orangeAccent,
              )),
          Btn(name: "Sign Up", onPressed:() {
            print(email.text.toString());
            print(password.text.toString());
          }),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 100,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Or sign up with",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 1,
                width: 100,
                color: Colors.white,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                onPressed: () {},
                child: Container(
                  height: 40,
                  width: 40,
                  child: SvgPicture.asset(
                    'assits/facebook_logo.svg',
                  ),
                ),
              ),
              CupertinoButton(
                onPressed: () {},
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: SvgPicture.asset(
                      'assits/google_logo.svg',
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
