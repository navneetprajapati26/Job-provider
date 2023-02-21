import 'package:flutter/material.dart';
import 'package:project_9/util/job_box/jobBox.dart';

import '../../util/theem/colours.dart';
import '../../util/theem/text_style.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Text("Jobs", style: h2HeadingTextStyle),
        centerTitle: true,
        backgroundColor: background,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index) {
          return JobBox();
        })),
      ),
    );
  }
}
