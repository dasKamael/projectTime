import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  String taskName;
  double time;
  Color color;
  Map<String, bool> days;
  TaskCard({this.taskName, this.time, this.color, this.days});

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('${widget.taskName}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        )),
                    Text('${widget.time}'),
                  ],
                ),
                Divider(thickness: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          '${widget.days['M'] ? "M" : "-"} ' +
                              ' ${widget.days['T'] ? "T" : "-"} ' +
                              ' ${widget.days['W'] ? "W" : "-"} ' +
                              ' ${widget.days['T'] ? "T" : "-"} ' +
                              ' ${widget.days['F'] ? "F" : "-"} ' +
                              ' ${widget.days['S'] ? "S" : "-"} ' +
                              ' ${widget.days['S'] ? "S" : "-"}',
                          style: TextStyle(letterSpacing: 5.0),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.pause),
                        Icon(Icons.play_arrow),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
