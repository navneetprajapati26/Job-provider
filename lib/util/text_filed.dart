import 'package:flutter/material.dart';
class CusTextFiled extends StatelessWidget {

  TextEditingController textController ;
  String labelText;
  Icon icon;

  CusTextFiled({Key? key, required this.textController,required this.labelText, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: textController,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: icon,
          //prefixIconColor: ,
          //prefixText: "Email : ",
          //hintText: "Email",
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.orangeAccent),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.orangeAccent, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.white, width: 2)),
        ),
      ),
    );
  }
}
