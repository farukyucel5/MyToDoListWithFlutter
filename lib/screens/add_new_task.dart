import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants/colorsConstants.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

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


              const TextField(
                  decoration: InputDecoration(filled: true,fillColor: Colors.white60),
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

              const Padding(
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
                              decoration: InputDecoration(filled: true,fillColor: Colors.white60),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text("Time"),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                decoration: InputDecoration(filled: true,fillColor: Colors.white60),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
               const Padding(
                 padding:  EdgeInsets.only(top: 20),
                 child:  Column(
                  children: [
                    Text("Notes"),
                    SizedBox(
                      height: 300,
                        child: TextField(
                          expands: true,
                          maxLines: null,
                          decoration: InputDecoration(
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
                    onPressed: () {},
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
