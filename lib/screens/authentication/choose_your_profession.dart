import 'package:flutter/material.dart';
import 'package:project_9/screens/authentication/login_screen.dart';
import 'package:project_9/util/button/btn.dart';

class ChooseYourProfession extends StatefulWidget {
  const ChooseYourProfession({Key? key}) : super(key: key);

  @override
  State<ChooseYourProfession> createState() => _ChooseYourProfessionState();
}

// Choose your profile -
// Employer
// Candidate
// Consultant

class _ChooseYourProfessionState extends State<ChooseYourProfession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xE0264150),
      appBar: AppBar( backgroundColor: const Color(0xE0264150),title: Text("Choose your profile"),elevation: 0,),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Btn(
                name: "Employer",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }),
            Btn(
                name: "Candidate",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }),
            Btn(
                name: "Consultant",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                })
          ],
        ),
      ),
    );
  }
}
