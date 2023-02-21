import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../button/textBtn.dart';
import '../theem/text_style.dart';

class FindYourJob extends StatelessWidget {
  const FindYourJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Find Your Job",
                style: h2HeadingTextStyle,
              ),
              // TextBtn(
              //   onPressed: () {},
              //   name: "view all",
              // )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: Container(
                  height: 200,
                  width: width / 2 - 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xffafecfe),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.join_full_rounded),
                      Text("44.5k",style: h0HeadingTextStyle),
                      Text("Remote jobs",style: h2HeadingTextStyle)
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      child: Container(
                        height: 90,
                        width: width / 2 - 20,
                        decoration: BoxDecoration(
                            color: Color(0xffbeb0ff),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("21.5k",style: h0HeadingTextStyle),
                            Text("Full Time",style: h2HeadingTextStyle)
                          ],
                        ),
                      ),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      child: Container(
                        height: 90,
                        width: width / 2 - 20,
                        decoration: BoxDecoration(
                            color: Color(0xffffd6ae),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("14.5k",style: h0HeadingTextStyle),
                            Text("Part Time",style: h2HeadingTextStyle)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
