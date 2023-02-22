import 'package:flutter/material.dart';

class Harsit extends StatefulWidget {
  const Harsit({Key? key}) : super(key: key);

  @override
  State<Harsit> createState() => _HarsitState();
}

class _HarsitState extends State<Harsit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network("https://picsum.photos/200")

        ],
      ),
    );
  }
}
