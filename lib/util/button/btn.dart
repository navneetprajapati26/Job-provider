import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  String name;
  void Function() onPressed;

  Btn({Key? key, required this.name, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: const EdgeInsets.all(8),
        onPressed: onPressed,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white10,
                  offset: Offset(3,4),
                  blurRadius: 6,
                  spreadRadius: 6,
                  blurStyle: BlurStyle.normal,
                )
              ]),
          alignment: Alignment.center,
          child: Text(
            name,
            style: const TextStyle(color: Colors.indigo, fontSize: 20),
          ),
        ));
  }
}
