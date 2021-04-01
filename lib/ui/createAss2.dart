import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teacher_app/ui/constants.dart';

class CreateAssignment2 extends StatefulWidget {
  @override
  _CreateAssignment2State createState() => _CreateAssignment2State();
}

class _CreateAssignment2State extends State<CreateAssignment2> {
  bool ques1 = false;
  String filter;
  Widget checkbox(bool boolValue) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(value: ques1,
            activeColor: kPrimaryColor,
            onChanged:(bool newValue){
              setState(() {
                ques1 = newValue;
              });
              Text('Remember me');
            }),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: kPrimaryColor,
          onPressed: (){},
          label: Text("Publish",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: kBlackColor),),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Test",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: kBlackColor),
          ),

        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child:   Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Class 7 A",
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w600,
                          color: kBlackColor,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index){
                          return Padding(
                            padding: EdgeInsets.only(
                              bottom: 15,

                            ),                      child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      radius: 25,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Student Name",
                                      style: TextStyle(
                                        fontSize: 14,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w600,
                                        color: kBlackColor,
                                      ),
                                    ),
                                  ],
                                ),
                               checkbox(ques1)
                              ],
                            ),
                          ),
                          );
                        })),
            
              ],
            ),
          ),
        ),
      ),);
  }
}
