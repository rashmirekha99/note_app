import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_app/styles/app_styles.dart';

class AddNewNote extends StatefulWidget {
  const AddNewNote({Key? key}) : super(key: key);

  @override
  State<AddNewNote> createState() => _AddNewNoteState();
}

class _AddNewNoteState extends State<AddNewNote> {
  int color_id = Random().nextInt(AppStyles.cardColors.length);
  String date = DateTime.now().toString();
  TextEditingController _title = TextEditingController();
  TextEditingController _content = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.cardColors[color_id],
      appBar: AppBar(
        title: const Text("Add New Note"),
        centerTitle: true,
        backgroundColor: AppStyles.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            TextField(
              controller: _title,
              decoration: InputDecoration(
                hintText: "Enter Title",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: _content,
              decoration: InputDecoration(
                  hintText: "Enter Content", border: OutlineInputBorder()),
              maxLines: 15,
              keyboardType: TextInputType.multiline,
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () async {
                FirebaseFirestore.instance.collection("Notes").add({
                  "title": _title.text,
                  "content": _content.text,
                  "date": date,
                  "color_id": color_id,
                }).then((value) {
                  Navigator.pop(context);
                }).catchError((error) => print(error));
              },
              child: const Text(
                "Save",
                style: TextStyle(fontSize: 18.0),
              ),
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(100, 45)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36) //Button Shape
                          )),
                  backgroundColor: MaterialStateProperty.all(
                      AppStyles.primaryColor), //Button Color
                  elevation: MaterialStateProperty.all(10) //button shadow
                  ),
            ),
          ]),
        ),
      ),
    );
  }
}
