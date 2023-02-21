import 'package:flutter/material.dart';

import '../../util/theem/colours.dart';
import '../../util/theem/text_style.dart';
class ConsultantScreen extends StatefulWidget {
  const ConsultantScreen({Key? key}) : super(key: key);

  @override
  State<ConsultantScreen> createState() => _ConsultantScreenState();
}

class _ConsultantScreenState extends State<ConsultantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(title: Text("Consultant",style: h2HeadingTextStyle),centerTitle: true,backgroundColor: background,elevation: 0,),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("consultant",style: TextStyle(color: Colors.white),)
            ],
          ),

        ),
      ),
    );
  }
}
