import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobileappinternee/const/Strings.dart';
import 'package:mobileappinternee/const/const.dart';
import 'package:mobileappinternee/const/fontstyle.dart';
import '../const/Homelist.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internship Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  final List<Task> tasks = [
    Task(
        id: 'TSK-000-25',
        category: 'Flutter Internship',
        task: 'Introducing Yourself Task:',
        status: 'pending'),
    Task(
        id: 'TSK-000-141',
        category: 'Flutter Internship',
        task: 'Mobile App of internee.pk',
        status: 'Unlocked'),
    Task(
        id: 'TSK-000-142',
        category: 'Flutter Internship',
        task: 'UI Design with Flutter Widgets',
        status: 'Locked'),
    Task(
        id: 'TSK-000-143',
        category: 'Flutter Internship',
        task: 'State Management with Provider or Bloc',
        status: 'Locked'),
    Task(
        id: 'TSK-000-144',
        category: 'Flutter Internship',
        task: 'Firebase Integration',
        status: 'Locked'),
    Task(
        id: 'TSK-000-145',
        category: 'Flutter Internship',
        task: 'Publishing and App Deployment',
        status: 'Locked'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            loginwelcome.text
                .fontFamily(semibold)
                .make()
                .box
                .white
                .size(context.screenWidth, context.screenHeight * 0.06)
                .shadowSm
                .padding(const EdgeInsets.all(12))
                .margin(const EdgeInsets.all(12))
                .make(),
            const Divider(),
            running.text.fontFamily(semibold).make().box.white.make(),
            const Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  columnWidths: const {
                    0: FixedColumnWidth(50.0),
                    1: FixedColumnWidth(150.0),
                    2: FixedColumnWidth(200.0),
                    3: FixedColumnWidth(250.0),
                    4: FixedColumnWidth(150.0),
                    5: FixedColumnWidth(100.0),
                  },
                  border: const TableBorder(
                    bottom: BorderSide(width: 2.0, color: Colors.black),
                  ),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      decoration: const BoxDecoration(
                        border: const Border(
                          bottom: BorderSide(width: 2.0, color: Colors.black),
                        ),
                      ),
                      children: [
                        const Padding(
                            padding: EdgeInsets.all(8.0), child: Text("#")),
                        const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("TaskId")),
                        const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Category")),
                        const Padding(
                            padding: EdgeInsets.all(8.0), child: Text("Task")),
                        const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Status")),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text("Actions").box.green700.make()),
                      ],
                    ),
                    ...tasks.map((task) => TableRow(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.grey),
                            ),
                          ),
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    Text((tasks.indexOf(task) + 1).toString())),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(task.id)),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(task.category)),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(task.task)),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(task.status)),
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Actions",
                                  style: TextStyle(color: Colors.white),
                                ).box.green700.make()),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class Task {
  final String id;
  final String category;
  final String task;
  final String status;

  Task({
    required this.id,
    required this.category,
    required this.task,
    required this.status,
  });
}
