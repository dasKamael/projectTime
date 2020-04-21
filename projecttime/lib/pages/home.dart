import 'package:flutter/material.dart';
import 'package:projecttime/classes/task.dart';
import 'package:projecttime/widgets/taskCard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<TaskCard> tasks = [
    TaskCard(taskName: 'taskname', color: Colors.blue, time: 100, days: {
      'M': false,
      'T': true,
      'W': false,
      'T': true,
      'F': false,
      'S': false,
      'S': false,
    }),
    TaskCard(taskName: 'Bob', color: Colors.red, time: 100, days: {
      'M': true,
      'T': true,
      'W': false,
      'T': true,
      'F': true,
      'S': false,
      'S': false,
    }),
    TaskCard(taskName: 'taskname', color: Colors.orange, time: 100, days: {
      'M': false,
      'T': true,
      'W': false,
      'T': true,
      'F': false,
      'S': false,
      'S': false,
    }),
    TaskCard(taskName: 'taskname', color: Colors.yellow, time: 100, days: {
      'M': false,
      'T': true,
      'W': false,
      'T': true,
      'F': false,
      'S': false,
      'S': false,
    }),
  ];

  Map taskData = {};

  @override
  Widget build(BuildContext context) {
    taskData = taskData.length < 1
        ? taskData
        : ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/night.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                  child: Center(
                child: Text(
                  '00:00',
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.white),
                ),
              )),
            ),
            Flexible(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return tasks[index];
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          dynamic result = await Navigator.pushNamed(context, '/addTask');
          print(result);
          setState(() {
            tasks.add(
              TaskCard(
                taskName: result['taskName'],
                color: result['color'],
                time: 100,
                days: result['days'],
              ),
            );
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
