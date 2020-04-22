import 'package:flutter/material.dart';
import 'package:projecttime/widgets/taskCard.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String taskName = 'Not given';
  Color color = Colors.blue;

  List<bool> daysSelected = [false, false, false, false, false, false, false];
  Map<String, bool> days = {
    'M': false,
    'T': false,
    'W': false,
    'T': false,
    'F': false,
    'S': false,
    'S': false,
  };

  int groupValue = 1;

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
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Radio(
                          onChanged: (e) {
                            setState(() {
                              groupValue = e;
                              color = Colors.blue;
                            });
                          },
                          activeColor: Colors.blue,
                          value: 1,
                          groupValue: groupValue,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Radio(
                          onChanged: (e) {
                            setState(() {
                              groupValue = e;
                              color = Colors.green;
                            });
                          },
                          activeColor: Colors.green,
                          value: 2,
                          groupValue: groupValue,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                        child: Radio(
                          onChanged: (e) {
                            setState(() {
                              groupValue = e;
                              color = Colors.orange;
                            });
                          },
                          activeColor: Colors.orange,
                          value: 3,
                          groupValue: groupValue,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Radio(
                          onChanged: (e) {
                            setState(() {
                              groupValue = e;
                              color = Colors.red;
                            });
                          },
                          activeColor: Colors.red,
                          value: 4,
                          groupValue: groupValue,
                        ),
                      ),
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
            'color': color,
            'days': days,
          });
        },
      ),
    );
  }
}
