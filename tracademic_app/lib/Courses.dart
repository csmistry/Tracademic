import 'package:flutter/material.dart';

class CoursesPage extends StatefulWidget {
  //create the courses page state class
  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  final List<String> courses = <String>['ECE 201', 'ECE 203', 'ECE 207', 'ECE 208', 'ECE 224', 'ECE 252', 'SCI 238'];
  Widget build(BuildContext context) {
    Widget averageSection = Container(
      margin: const EdgeInsets.all(10.0),
      color: Colors.amber[600],
      height: 200,
    );
    Widget coursesSection = Container(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: courses.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              height: 40,
              child: Text('${courses[index]}')
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Courses"),
      ),
      body: Column(
        children: [
          averageSection,
          coursesSection
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: RaisedButton(
        onPressed: () => setState(() {
          print("Button pressed");
        }),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text("Add Course"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}