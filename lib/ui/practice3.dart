import 'package:flutter/material.dart';
import 'package:teacher_app/ui/constants.dart';


class SelectQuestionPaper3 extends StatefulWidget {
  @override
  _SelectQuestionPaper3State createState() => _SelectQuestionPaper3State();
}

class _SelectQuestionPaper3State extends State<SelectQuestionPaper3> {
  int radioValue = 0;
  double _finalResult = 0.0;

  void handleRadioValueChanged(int value){
    setState(() {
      radioValue = value;
    });
  }
  void showDialog1() {
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
              height: 250,
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Safe Draft",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Publish and Assign",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Publish only",
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
              height: 350,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Section Details & Instruction",
                      style: TextStyle(
                          fontSize: 14,                              decoration: TextDecoration.none,

                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Title",
                      style: TextStyle(
                          fontSize: 14,                              decoration: TextDecoration.none,

                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Part A",
                      style: TextStyle(
                          fontSize: 14,                              decoration: TextDecoration.none,

                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),Text(
                      "Instructions",
                      style: TextStyle(
                          fontSize: 14,                              decoration: TextDecoration.none,

                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, "
                          "consectetur adipiscing elit. Ut blandit eleifend eget "
                          "massa semper. Arcu massa viverra fermentum feu",
                      style: TextStyle(
                          fontSize: 14,                              decoration: TextDecoration.none,

                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Safe Instructions",
                          style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
            actions: [
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.05),
                child: Icon(
                  Icons.print,
                  color: kGreyColor,
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: showDialog2,
            child: Icon(Icons.play_arrow,
            color: kWhiteColor,),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Q ${index + 1}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: kBlackColor),
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
                                          new Radio<int>(value: 1, groupValue: radioValue, onChanged: handleRadioValueChanged,
                                            activeColor: Colors.blue,),

                                          Text("A Lever", style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: kBlackColor),)
                                        ],
                                      ),

                                      Row(
                                        children: [
                                        Radio<int>(value: 2, groupValue: radioValue, onChanged: handleRadioValueChanged,
                                        activeColor: Colors.blue,),
                                          Text("The turning effect of a force ", style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: kBlackColor),)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                        Radio<int>(value: 3, groupValue: radioValue, onChanged: handleRadioValueChanged,
                                        activeColor: Colors.blue,)
                                          ,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.edit,
                                      color: kGreyColor,
                                        size: 18,
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
                                    Icon(Icons.delete_forever_outlined,
                                      color: kGreyColor,
                                      size: 18,
                                    )

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
