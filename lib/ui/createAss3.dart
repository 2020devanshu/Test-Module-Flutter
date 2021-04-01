import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teacher_app/ui/constants.dart';

class CreateAssignment3 extends StatefulWidget {
  @override
  _CreateAssignment3State createState() => _CreateAssignment3State();
}

class _CreateAssignment3State extends State<CreateAssignment3> {
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: 30,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "Class / Group",
                          style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.search)
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
