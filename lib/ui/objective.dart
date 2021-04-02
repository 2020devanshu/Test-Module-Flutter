import 'package:flutter/material.dart';
import 'package:teacher_app/ui/constants.dart';

class Objective extends StatefulWidget {
  @override
  _ObjectiveState createState() => _ObjectiveState();
}

class _ObjectiveState extends State<Objective> {
  int radioValue = 0;
  double _finalResult = 0.0;

  void handleRadioValueChanged(int value){
    setState(() {
      radioValue = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  color: kLightColor

                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "01",
                            style: TextStyle(
                              fontSize: 18,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor,
                            ),
                          ),Text(
                            "  of 12",
                            style: TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w400,
                              color: kBlackColor,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward,
                      color: kBlackColor,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Student Answer",
                      style: TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        color: kGreyColor,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star,
                        color: kPrimaryColor,),
                        Text(
                          " 5",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 60,
                  decoration: BoxDecoration(
                      color: kLightColor

                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Q 1 ",
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w600,
                          color: kBlackColor,
                        ),
                      ), Text(
                        "Which one of this is a wild Animal?",
                        style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor,
                        ),
                      ),

                    ],
                  ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                      top: 10
                    ),
                    child: Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "A",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w400,
                              color: kBlackColor,
                            ),
                          ),
                          Radio<int>(value: index+3, groupValue: radioValue, onChanged: handleRadioValueChanged,
                            activeColor: Colors.lightGreen,),
                          Container(
                            width: 100,
                            height: 60,
                            decoration: BoxDecoration(
                              color: kLightColor,
                              borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Text(
                            "Cat",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w400,
                              color: kBlackColor,
                            ),
                          ),
                          SizedBox(
                            width:150,
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                child: Text(
                  "Correct answer",
                  style: TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w600,
                    color: kGreyColor,
                  ),
                ),
              ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
              top: 10
          ),
          child: Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "A",
                  style: TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400,
                    color: kBlackColor,
                  ),
                ),
                Radio<int>(value: 1, groupValue: radioValue, onChanged: handleRadioValueChanged,
                  activeColor: Colors.lightGreen,),
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                      color: kLightColor,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
                Text(
                  "Cat",
                  style: TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400,
                    color: kBlackColor,
                  ),
                ),
                SizedBox(
                  width:150,
                )
              ],
            ),
          ),
        ), SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                ),                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),

                      ),
                      child: Center(
                        child: Text(
                          "Next Question",
                          style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
