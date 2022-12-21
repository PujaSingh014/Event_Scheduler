
import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list = [Text("Welcome")];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Event Scheduler'),
        ),
        body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: ((context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _list[index],
                  ],
                )),
          )),
        ),
        backgroundColor: Colors.deepPurple[200],
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.deepPurple[700],
            onPressed: () async {
              String newText = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewEventScreen()));
              setState(() {
                _list.add(Text(newText));
              });
            },
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
