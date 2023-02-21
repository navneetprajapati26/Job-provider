import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustmBtn extends StatelessWidget {
  double height;
  double width;
  String name;
  void Function() onPressed;
  Color color;

  CustmBtn(
      {Key? key,
      required this.height,
      required this.width,
      required this.name,
      required this.color,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          name,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),
        ),
      ),
    );
  }
}
