import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_9/screens/home/home.dart';
import 'package:project_9/screens/authentication/forget_password_screen.dart';
import 'package:project_9/screens/authentication/sign_up_screen.dart';

import '../../util/button/btn.dart';
import '../../util/button/textBtn.dart';
import '../../util/text_filed.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xE0264150),
      appBar: AppBar( backgroundColor: const Color(0xE0264150),elevation: 0,),
      body: SafeArea(
        child: Column(
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
            CusTextFiled(
                textController: password,
                labelText: "Password",
                icon: const Icon(
                  Icons.password,
                  color: Colors.orangeAccent,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextBtn(name: 'Forget password ?', onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPassScreen())); },)
              ],
            ),
            Btn(name: 'Log in', onPressed: () {
              print(email.text.toString());
              print(password.text.toString());
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
            },),
            TextBtn(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                },
              name: "Have no account ?, Sign up ",
            ),
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
                  "Or log in with",
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
      ),
    );
  }
}
