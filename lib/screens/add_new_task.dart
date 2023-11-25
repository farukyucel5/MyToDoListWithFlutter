import 'package:flutter/material.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight=MediaQuery.of(context).size.height;
    double deviceWidth=MediaQuery.of(context).size.width;
    return   SafeArea(
      child: Scaffold(
        body: Column(
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

          ],
        )
      ),
    );
  }
}
