import 'package:flutter/material.dart';
import 'package:projecttime/timeCard.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              width: 350.0,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  cursorColor: Colors.white,
                  cursorWidth: 2.0,
                  maxLength: 25,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.track_changes,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Repeat', style: TextStyle(fontSize: 30.0)),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'M D M D F S S',
                        style: TextStyle(fontSize: 22, letterSpacing: 10.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.0),
                  Text('Color', style: TextStyle(fontSize: 30.0)),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.album, color: Colors.blue),
                      Icon(Icons.album, color: Colors.green),
                      Icon(Icons.album, color: Colors.yellow),
                      Icon(Icons.album, color: Colors.red),
                      Icon(Icons.album, color: Colors.grey),
                      Icon(Icons.album, color: Colors.pink),
                      Icon(Icons.album, color: Colors.purple),
                      Icon(Icons.album, color: Colors.lightBlue),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.delete_forever),
            title: Text('Delete Task'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, ),
            title: Text('Add new Task'),
          ),
        ],
      ),
    );
  }
}
