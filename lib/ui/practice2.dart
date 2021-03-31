import 'package:flutter/material.dart';
import 'package:teacher_app/ui/constants.dart';


class SelectQuestionPaper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "PRACTICE QUESTION PAPER",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w700, color: kBlackColor),
            ),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    Container(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text(
                              "Created by Musa Ahmed",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: kBlackColor),
                            ),
                          ),


                        ],
                      ),
                    ),

                    Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Total Questions",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kBlackColor),
                          ),
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                                border:
                                Border.all(color: kGreyColor, width: 0.5),
                                borderRadius: BorderRadius.circular(2)),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  // left: 12,
                                  // right: 4,
                                  bottom: 2,
                                  top: 2,
                                ),
                                child: Text(
                                  "50",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: kBlackColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: kGreyColor, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                      right: MediaQuery.of(context).size.width * 0.03,
                    ),
                    child: TextFormField(
                      maxLines: 2,
                      cursorColor: kGreyColor,
                      decoration: InputDecoration(
                        labelText: "Learning Outcome",
                        labelStyle: TextStyle(
                            color: kGreyColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        fillColor: kLightColor,
                        hintStyle: TextStyle(
                            color: kGreyColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kLightColor),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kLightColor),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  color: kLightColor,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1,
                      right: MediaQuery.of(context).size.width * 0.03,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.folder_open_outlined,
                          size: 20,
                          color: kBlackColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Question Bank",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: kBlackColor),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.3,
                        ),
                        Container(
                          width: 80,
                          height: 20,
                          decoration: BoxDecoration(
                              border:
                              Border.all(color: kGreyColor, width: 0.5),
                              borderRadius: BorderRadius.circular(5),
                          color: kWhiteColor),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                // left: 12,
                                // right: 4,
                                bottom: 2,
                                top: 2,
                              ),
                              child: Text(
                                "filter",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: kBlackColor),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(child: ListView.builder( itemCount: 2,
                    itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Container(
                      height: 120,
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 9,
                            backgroundColor: Colors.yellow,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.08,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.65,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("What is Moment ? ", style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: kBlackColor),),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.blue[200],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("A Lever", style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: kBlackColor),)
                                  ],
                                ),

                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.blue[200],
                                    ),SizedBox(
                                      width: 10,
                                    ),
                                    Text("The turning effect of a force ", style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: kBlackColor),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.blue[200],
                                    ),SizedBox(
                                      width: 10,
                                    ),
                                    Text("multimeter", style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: kBlackColor),)
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.remove_red_eye_outlined,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                    color: kPrimaryColor,
                                  ),
                                  Text("5", style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: kBlackColor),)
                                ],
                              ),

                            ],
                          )
                        ],
                      )
                    ),
                  );
                    }))
              ],
            ),
          ),
    ));
  }
}
