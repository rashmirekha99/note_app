import 'package:flutter/material.dart';
import 'package:note_app/styles/app_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
        centerTitle: true,
        backgroundColor: AppStyles.primaryColor,
      ),
      body: Column(children: const [
        Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Your Notes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
        ),
      ]),
    );
  }
}
