// import 'package:flutter/cupertino.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("New Event"),
      ),
      backgroundColor: Colors.deepPurple[200],
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(255, 130, 4, 241),
            ),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Event',
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                border: InputBorder.none,
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.event, color: Colors.white, size: 25),
                ),
              ),
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 4,
              controller: _textEditingController,
            ),
          ),
        ),
        // TextField(
        //   controller: _textEditingController,
        // ),
        Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: ElevatedButton(
                onPressed: () {
                  String newEventText = _textEditingController.text;
                  Navigator.of(context).pop(newEventText);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[400],
                  foregroundColor: Colors.white,
                  minimumSize: Size.fromHeight(45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
                child: Text("ADD")),
          );
        }),
      ]),
    );
  }
}