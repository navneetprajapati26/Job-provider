import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../util/text_filed.dart';
class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  var email = TextEditingController();
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CusTextFiled(
            labelText: "Email",
            textController: email,
            icon: const Icon(
              Icons.markunread,
              color: Colors.orangeAccent,
            ),
          ),
          CupertinoButton(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(30)),
                alignment: Alignment.center,
                child: const Text(
                  "Get set password link",
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
              ),
              onPressed: () {
                print(email.text.toString());
              }),
          SizedBox(
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
              SizedBox(
                width: 10,
              ),
              Text(
                "Or log in with",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
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
