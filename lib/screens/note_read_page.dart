import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class NoteRead extends StatefulWidget {
  NoteRead(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<NoteRead> createState() => _NoteReadState();
}

class _NoteReadState extends State<NoteRead> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
        centerTitle: true,
        backgroundColor: AppStyles.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc["title"],
              style: AppStyles.mainTitle,
            ),
            SizedBox(height: 10.0),
            Text(
              widget.doc["content"],
              style: AppStyles.contenTitle,
              textAlign: TextAlign.justify,
            ),
            // Text(doc["date"],style: AppStyles.date,),
          ],
        ),
      ),
      backgroundColor: AppStyles.cardColors[color_id],
    );
  }
}
