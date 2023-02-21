import 'package:flutter/material.dart';

import '../theem/text_style.dart';

class TextBtn extends StatelessWidget {
  String name;
  void Function() onPressed;
  TextBtn({Key? key, required this.name, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          name,
          style: textBtnTextStyle,
        ));
  }
}
