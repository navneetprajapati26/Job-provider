import 'package:flutter/material.dart';
import '../../util/service_box/jobBox.dart';
import '../../util/theem/colours.dart';
import '../../util/theem/text_style.dart';
class ConsultantScreen extends StatefulWidget {
  const ConsultantScreen({Key? key}) : super(key: key);

  @override
  State<ConsultantScreen> createState() => _ConsultantScreenState();
}

class _ConsultantScreenState extends State<ConsultantScreen> {

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
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ServiceBox(
                            jobPost: "Flutter Devloper",
                            companiName: "Sofodel",
                            companiLocation: "",
                            jobType: "",
                            jobSalary: "",
                            jobRating: "",
                            jobPosition: "",
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
