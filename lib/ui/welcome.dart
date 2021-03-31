import 'package:flutter/material.dart';
import 'package:teacher_app/ui/createAss.dart';
import 'package:teacher_app/ui/practice2.dart';
import 'package:teacher_app/ui/practice3.dart';
import 'package:teacher_app/ui/qustions.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return CreateAssignment();
              }));
            },
            child: Text("Start"),
          ),
        ),
      ),


    );
  }
}
