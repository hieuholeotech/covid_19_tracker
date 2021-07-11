import 'package:covid_19/screens/schedule/components/schedule_intro.dart';
import 'package:covid_19/screens/schedule/components/schedule.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Review your schedule", style: TextStyle(
          fontSize: 16,
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ScheduleIntro(),
            Schedule(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: const Icon(Icons.add),
        backgroundColor: Color(0xFF4c3f98),
      ),
    );
  }
}
