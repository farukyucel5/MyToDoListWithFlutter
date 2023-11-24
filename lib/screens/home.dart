import 'package:flutter/material.dart';

import '../containers.dart';
import '../todoitem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> todo =["Study Lessons","Run 5K","Go to party"];
    List<String> completed = ["Game meetup","Take out trash"];
    return MaterialApp(
        home:SafeArea(
          child: Scaffold(
              body:Column(
                children: [
                  const UpperContainer(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,10),
                      child: SingleChildScrollView(
                          child: ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: todo.length,
                              itemBuilder: (context,index) {
                                return TodoItem(title:todo[index]);
                              }
                          )
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "Completed",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,10),
                      child: SingleChildScrollView(
                          child: ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              itemCount: completed.length,
                              itemBuilder: (context,index) {
                                return TodoItem(title: completed[index]);
                              }
                          )
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text("Add New Task")
                  )
                ],

              )
          ),
        )

    );
  }
}
