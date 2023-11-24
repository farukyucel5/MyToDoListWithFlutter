import 'package:flutter/material.dart';

class UpperContainer extends StatelessWidget {
  const UpperContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight=MediaQuery.of(context).size.height;
    double deviceWidth=MediaQuery.of(context).size.width;
    return  Container(
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
    );
  }
}
