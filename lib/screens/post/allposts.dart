import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:project_9/screens/post/newpost.dart';

import '../../util/button/textBtn.dart';
import '../../util/theem/colours.dart';
import '../../util/theem/text_style.dart';

class AllPosts extends StatefulWidget {
  const AllPosts({Key? key}) : super(key: key);

  @override
  State<AllPosts> createState() => _AllPostsState();
}

class _AllPostsState extends State<AllPosts> {
  @override
  Widget build(BuildContext context) {
    void Like() {}

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        title: Text(
          'All Posts',
          style: h2HeadingTextStyle,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextBtn(
              name: "New Post",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewPostScreen()));
              },
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 8, bottom: 8, top: 8),
                              child: CircleAvatar(
                                radius: 20,
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
                                    "Googel",
                                    style: h1HeadingTextStyle,
                                  ),
                                  const Text(
                                    "5h ago",
                                    style: TextStyle(
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
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  "https://picsum.photos/200",
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              "The Flutter cookbook includes multiple navigation recipes that show how to use the Navigator."),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      //todo : Like Butten
                                    },
                                    child: LikeButton(),
                                  ),
                                  Text("12"),
                                  CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      //todo : Like Butten
                                    },
                                    child: Icon(Icons.comment,color: Colors.grey,),
                                  ),
                                  Text("12")
                                ],
                              ),
                              Row(
                                children: [
                                  CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      //todo : Share Butten
                                    },
                                    child: Icon(Icons.shortcut_rounded,color: Colors.grey,),
                                  ),
                                  Text("12"),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
