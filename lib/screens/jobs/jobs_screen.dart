import 'package:flutter/material.dart';
import 'package:project_9/screens/jobs/job_model.dart';
import '../../util/service_box/jobBox.dart';
import '../../util/theem/colours.dart';
import '../../util/theem/text_style.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {

  List job = [
    JobModel("Flutter developer", "Sofodel.","New Delhi","State management","Animation","20k/mon","4.9"),
    JobModel("Android developer", "Googel.","California","State management","Animation","20k/mon","4.9"),
    JobModel("Flutter developer", "Sofodel.","New Delhi","State management","Animation","20k/mon","4.9"),
    JobModel("Android developer", "Googel.","California","State management","Animation","20k/mon","4.9"),
  ];

  final TextEditingController searchController = TextEditingController();

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
              child: ListView.builder(
                  itemCount: job.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ServiceBox(
                        jobPost: job[index].jobPost,
                        companiName: job[index].companiName,
                        companiLocation: job[index].companiLocation,
                        jobPosition: job[index].jobPosition,
                        jobRating: job[index].jobRating,
                        jobSalary: job[index].jobSalary,
                        jobType: job[index].jobType,

                      ),
                    );
                  }),
            ),
          ],
        )),
      ),
    );
  }
}
