import 'package:flutter/material.dart';
import 'package:projecttime/widgets/taskCard.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String taskName;
  Color color;
  Map<String, bool> days = {
    'M': false,
    'T': false,
    'W': false,
    'T': false,
    'F': false,
    'S': false,
    'S': false,
  };
  List<bool> daysSelected = [false,false,false,false,false,false,false,];

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
                  onChanged: (String str) {
                    taskName = str;
                  },
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
                  ToggleButtons(
                    children: <Widget>[
                      Text('M'),
                      Text('T'),
                      Text('W'),
                      Text('T'),
                      Text('F'),
                      Text('S'),
                      Text('S'),
                    ],
                    onPressed: (int index) {
                      setState(() {
                        daysSelected[index] = !daysSelected[index];
                      });
                    },
                    isSelected: daysSelected,
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          days['M'] = daysSelected[0];
          days['T'] = daysSelected[1];
          days['W'] = daysSelected[2];
          days['T'] = daysSelected[3];
          days['F'] = daysSelected[4];
          days['S'] = daysSelected[5];
          days['S'] = daysSelected[6];

          Navigator.pop(context, {
            'taskName': taskName,
            'color': Colors.blue,
            'days': days,
          });
        },
      ),
    );
  }
}
