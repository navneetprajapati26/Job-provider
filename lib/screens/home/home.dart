import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_9/util/job_box/jobBox.dart';
import 'package:project_9/util/theem/colours.dart';

import '../../util/button/textBtn.dart';
import '../../util/find_your_job/find_your_job.dart';
import '../../util/theem/text_style.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: background,
      appBar: AppBar(
        title: Text("Home",style: h2HeadingTextStyle,),
        centerTitle: true,
        backgroundColor: background,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.notifications,color: Colors.black,),
          ),
          const SizedBox(width: 20,)
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search your favorite job ',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
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
                          const SizedBox(
                            height: 20,
                          ),
                          const FindYourJob(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Top companies",
                                style: h2HeadingTextStyle,
                              ),
                              TextBtn(
                                onPressed: () {},
                                name: "view all",
                              )
                            ],
                          ),
                          const JobBox(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Top constant",
                                style: h2HeadingTextStyle,
                              ),
                              TextBtn(
                                onPressed: () {},
                                name: "view all",
                              )
                            ],
                          ),
                          const JobBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
