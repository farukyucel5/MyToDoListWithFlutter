import 'package:flutter/material.dart';
import 'package:to_do_app/todoitem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
 List<String> todo =["Study Lessons","Run 5K","Go to party"];
 List<String> completed = ["Game meetup","Take out trash"];
class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    double deviceHeight=MediaQuery.of(context).size.height;
    double deviceWidth=MediaQuery.of(context).size.width;

    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SafeArea(
          child: Scaffold(
              body:Column(
                children: [
                  Container(
                    width: deviceWidth,
                    height: deviceHeight/3,
                    color: Colors.purple,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text("November 24, 2023",style: TextStyle(color: Colors.white,
                              fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: Text(
                            "My Todo List",
                            style: TextStyle(color: Colors.white,fontSize:35,fontWeight:FontWeight.bold ),

                          ),
                        )
                      ],
                    ),
                  ),
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
