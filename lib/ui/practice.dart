import 'package:flutter/material.dart';
import 'package:teacher_app/ui/constants.dart';

class PracticeQuestionPaper extends StatefulWidget {
  @override
  _PracticeQuestionPaperState createState() => _PracticeQuestionPaperState();
}

class _PracticeQuestionPaperState extends State<PracticeQuestionPaper> {
  void showDialog2() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              margin: EdgeInsets.only(
                top: 80,
              ),
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          child: Text(
                            "Select Questions",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Container(
                          height: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Total Questions",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: kBlackColor,
                                    decoration: TextDecoration.none),
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: kBlackColor,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "MCQ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: kBlackColor,
                                        letterSpacing: 0.3,
                                        decoration: TextDecoration.none),
                                  ),
                                  Text(
                                    "25 Question Available",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kBlackColor,
                                        letterSpacing: 0.3,
                                        decoration: TextDecoration.none),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                children: [
                                  Text(
                                    "0 selected",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: kBlackColor,
                                        letterSpacing: 0.3,
                                        decoration: TextDecoration.none),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          top: 3,
                                          bottom: 3),
                                      child: Center(
                                        child: Text(
                                          "Select",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: kBlackColor,
                                              letterSpacing: 0.3,
                                              decoration: TextDecoration.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                  ],
                ),
              )),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }
  void showDialog() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              margin: EdgeInsets.only(
                top: 80,
              ),
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          child: Text(
                            "Auto Generate QP",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Container(
                          height: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Total Questions",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: kBlackColor,
                                    decoration: TextDecoration.none),
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: kBlackColor,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "MCQ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: kBlackColor,
                                        letterSpacing: 0.3,
                                        decoration: TextDecoration.none),
                                  ),
                                  Text(
                                    "25 Question Available",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kBlackColor,
                                        letterSpacing: 0.3,
                                        decoration: TextDecoration.none),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                      border: Border.all(
                                        width: 0.5,
                                        color: kGreyColor
                                      )
                              ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "0",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: kBlackColor,
                                            letterSpacing: 0.3,
                                            decoration: TextDecoration.none),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                  ],
                ),
              )),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

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
          child: SingleChildScrollView(
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
                          Container(
                            height: 25,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: kGreyColor, width: 0.5),
                                borderRadius: BorderRadius.circular(2)),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  bottom: 2,
                                  top: 2,
                                ),
                                child: Text(
                                  "Practice Text",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: kBlackColor),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.timelapse,
                                  size: 20,
                                ),
                                Text(
                                  "  1H 9m",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: kBlackColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.wine_bar,
                            color: kPrimaryColor,
                            size: 30,
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                "20",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: kBlackColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.label_important,
                            color: kPrimaryColor,
                            size: 30,
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                "20",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: kBlackColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "QP ID",
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
                                  "234",
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
                          Icons.event_note_sharp,
                          size: 20,
                          color: kBlackColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Test Instructions",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: kBlackColor),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 80,
                  decoration: BoxDecoration(
                      color: kLightColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: kGreyColor)),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                      right: MediaQuery.of(context).size.width * 0.03,
                    ),
                    child: Center(
                      child: Text(
                        "All questions are mandatory. "
                        "There are 30 questions in this paper. "
                        "Total marks for this test are 100. "
                        "Student have to score at least 40% to pass this test. Time duration is 3 hours",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor),
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
                        Text(
                          "Details",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: kBlackColor),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Class/Grade",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kGreyColor),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 25,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: kGreyColor, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.03,
                                    ),
                                    child: Text(
                                      "10th",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: kBlackColor),
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Subject",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kGreyColor),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 25,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: kGreyColor, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.03,
                                    ),
                                    child: Text(
                                      "English",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: kBlackColor),
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Language",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kGreyColor),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 25,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: kGreyColor, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.03,
                                    ),
                                    child: Text(
                                      "English",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: kBlackColor),
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Exam type",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kGreyColor),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 25,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: kGreyColor, width: 1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.03,
                                    ),
                                    child: Text(
                                      "English",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: kBlackColor),
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
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
                      maxLines: 3,
                      cursorColor: kGreyColor,
                      decoration: InputDecoration(
                        labelText: "Question Category",
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
                      maxLines: 3,
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
                      maxLines: 3,
                      cursorColor: kGreyColor,
                      decoration: InputDecoration(
                        labelText: "Chapters",
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
                      maxLines: 3,
                      cursorColor: kGreyColor,
                      decoration: InputDecoration(
                        labelText: "Topics",
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
                GestureDetector(
                  onTap: showDialog2,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 60,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Fetch Questions",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: kBlackColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: showDialog,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 60,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Auto Generate Questions",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: kBlackColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
