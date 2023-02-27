import 'package:flutter/material.dart';
import '../../util/service_box/jobBox.dart';
import '../../util/theem/colours.dart';
import '../../util/theem/text_style.dart';
import 'consultant.dart';
class ConsultantScreen extends StatefulWidget {
  const ConsultantScreen({Key? key}) : super(key: key);

  @override
  State<ConsultantScreen> createState() => _ConsultantScreenState();
}

class _ConsultantScreenState extends State<ConsultantScreen> {

  List consultants = [
    ConsultantModel("Raj kumar", "Consultant","New Delhi","State management","Animation","20k/mon","4.9"),
    ConsultantModel("Jagdish", "Consultant","California","State management","Animation","20k/mon","4.9"),
    ConsultantModel("Kuldeep", "Consultant","New Delhi","State management","Animation","20k/mon","4.9"),
    ConsultantModel("Rammbh", "Consultant","Karachi","State management","Animation","90k/h","5.0"),
  ];

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(title: Text("Consultant",style: h2HeadingTextStyle),centerTitle: true,backgroundColor: background,elevation: 0,),
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
                        hintText: 'Search your favorite consultant ',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: consultants.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ServiceBox(
                            jobPost: consultants[index].jobPost,
                            companiName: consultants[index].companiName,
                            companiLocation: consultants[index].companiLocation,
                            jobPosition: consultants[index].jobPosition,
                            jobRating: consultants[index].jobRating,
                            jobSalary: consultants[index].jobSalary,
                            jobType: consultants[index].jobType,
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
