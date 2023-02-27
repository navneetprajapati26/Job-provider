import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_9/util/button/textBtn.dart';

import '../../util/theem/colours.dart';
import '../../util/theem/text_style.dart';

class NewPostScreen extends StatefulWidget {
  @override
  _NewPostScreenState createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  final _textController = TextEditingController();
  File? _image;

  Future<void> _getImage(ImageSource source) async {
    PickedFile? imageFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );

    if (imageFile != null) {
      setState(() {
        _image = File(imageFile.path);
      });
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded,color: headingColour,),
          onPressed: (){Navigator.pop(context);},
        ),
        title: Text(
          'New Post',
          style: h2HeadingTextStyle,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextBtn(
              name: "Post",
              onPressed: () {
                // TODO: Add post functionality here
                final text = _textController.text.trim();
                if (text.isEmpty && _image == null) {
                  return;
                }
                // TODO: Implement post functionality here
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_image != null)
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: FileImage(_image!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.camera_alt, color: Colors.black),
                  onPressed: () => _getImage(ImageSource.camera),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      controller: _textController,
                      style: const TextStyle(color: Colors.black),
                      maxLines: null,
                      decoration: const InputDecoration(
                        hintText: 'What\'s on your mind?',
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
