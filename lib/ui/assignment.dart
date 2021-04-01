import 'package:flutter/material.dart';
import 'package:teacher_app/ui/constants.dart';

class Assignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 30,
                decoration: BoxDecoration(
                    color: kLightColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Question Paper Title",
                    style: TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w400,
                      color: kBlackColor,
                    ),
                  ),
                ),
              ),

              Text(
                "1h 9m",
                style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w600,
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 30,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                  ),                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Text(
                          "Assign",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,
                      color: kBlackColor,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                color: kGreyColor,
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Last date of submission - 18/04/21 6:00 pm",
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),

              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                  ),                              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                      Text(
                        "Total:",
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor,
                        ),
                      ),
                      Text(
                        "10 Questions",
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w600,
                          color: kBlackColor,
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
                    ],
                  ),
                ),
              ),
              Expanded(child: ListView.builder(itemBuilder: (BuildContext context , int index){
                return Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.05,
                    bottom: 5
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 25,
                              child: Row(
                                children: [
                                  Container(
                                    width: 1,
                                    height: 60,
                                    color: kGreyColor,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                            Container(
                              height: 25,
                              child: Row(
                                children: [
                                  Container(
                                    width: 1,
                                    height: 60,
                                    color: kGreyColor,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Question ${index + 1}",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: kBlackColor),
                                  ),Text(
                                    "Objective Types",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: kGreyColor),
                                  ),

                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: kGreyColor),
                                  ),
                                  Icon(Icons.star,
                                  color: kPrimaryColor,)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }))
            ],
          ),
        ),
      ),
    );
  }
}
