import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:to_do_app/constants/tasktype.dart';

import '../constants/colorsConstants.dart';
import '../model/task.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key,required this.addNewTask});
  final void Function(Task newTask) addNewTask;




  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  TextEditingController titleController =TextEditingController();
  TextEditingController dateController =TextEditingController();
  TextEditingController timeController =TextEditingController();
  TextEditingController descriptionController =TextEditingController();
  TaskType taskType =TaskType.note;

  @override
  Widget build(BuildContext context) {
    double deviceHeight=MediaQuery.of(context).size.height;
    double deviceWidth=MediaQuery.of(context).size.width;
    return   SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight/10,
                color: Colors.purple,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 40,
                          color: Colors.white,
                        )
                    ),
                    const Expanded(
                        child: Text(
                            "Add a new task",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        )

                    )
                  ],
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(top: 10),
                child:  Text("Task title"),
              ),


               TextField(
                 controller: titleController,
                  decoration: const InputDecoration(filled: true,fillColor: Colors.white60),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Category"),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Category selected"),
                            duration: Duration(microseconds:100),
                          )
                        );
                        setState(() {
                          taskType= TaskType.note;
                        });
                      },
                      child: Image.asset(
                        "lib/assets/images/category.png",
                        width: 35,
                        height: 35,

                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Category selected"),
                              duration: Duration(microseconds:100),
                            )
                        );
                        setState(() {
                          taskType= TaskType.calender;
                        });
                      },
                      child: Image.asset(
                        "lib/assets/images/calendar.png",
                        width: 35,
                        height: 35,

                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Category selected"),
                              duration: Duration(microseconds:100),
                            )
                        );
                        setState(() {
                          taskType= TaskType.contest;
                        });
                      },
                      child: Image.asset(
                        "lib/assets/images/trophy.png",
                        width: 35,
                        height: 35,

                      ),
                    )
                  ],
                ),
              ),

               Padding(
                padding:  EdgeInsets.only(top: 20),
                child:  Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Date"),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              controller: dateController,
                              decoration: const InputDecoration(filled: true,fillColor: Colors.white60),
                            ),
                          )
                        ],
                      ),
                    ),
                     Expanded(
                        child: Column(
                          children: [
                            const Text("Time"),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                controller: timeController,
                                decoration: const InputDecoration(filled: true,fillColor: Colors.white60),
                              ),
                            )
                          ],
                        ),
                    )
                  ],
                ),
              ),
              Padding(
                 padding:  const EdgeInsets.only(top: 20),
                 child:  Column(
                  children: [
                    const Text("Description"),
                    SizedBox(
                      height: 300,
                        child: TextField(
                          controller: descriptionController,
                          expands: true,
                          maxLines: null,
                          decoration: const InputDecoration(
                            filled: true,fillColor: Colors.white,isDense: true
                          ),

                        )
                    )
                  ],
                               ),
               ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      Task newTask =Task(
                          type: taskType,
                          title: titleController.text,
                          description: descriptionController.text,
                          isCompleted:false
                      );
                      widget.addNewTask(newTask);
                      Navigator.of(context).pop();
                    },
                    child: const Text("Save",style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,

                    ),
                    ),
                ),
              )

            ],
          ),
        )
      ),
    );
  }
}
