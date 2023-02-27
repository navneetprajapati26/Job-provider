import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_9/util/button/textBtn.dart';
import 'package:project_9/util/theem/colours.dart';

import '../button/custmBtn.dart';
import '../theem/text_style.dart';

class ServiceBox extends StatelessWidget {
  String jobPost;
  String companiName;
  String companiLocation;
  String jobType;
  String jobPosition;
  String jobSalary;
  String jobRating;

  ServiceBox(
      {Key? key,
      required this.jobPost,
      required this.companiName,
      required this.companiLocation,
      required this.jobPosition,
      required this.jobRating,
      required this.jobSalary,
      required this.jobType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: navBarColor, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 8, top: 8),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage('https://picsum.photos/200'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            jobPost,
                            style: h1HeadingTextStyle,
                          ),
                          Text(
                            "${companiName} ${companiLocation} ",
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star_sharp,
                        color: Colors.orange,
                      ),
                      Text(
                        jobRating,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
             Text(
              jobSalary,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 35,
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: background,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Text(
                        jobPosition,
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 35,
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: background,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        jobType,
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                //SizedBox(width: 20,),
                CustmBtn(
                  height: 35,
                  width: 80,
                  color: const Color(0x32ff9467),
                  onPressed: () {},
                  name: 'Apply',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
