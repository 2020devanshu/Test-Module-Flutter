import 'package:flutter/material.dart';
import 'package:teacher_app/ui/constants.dart';

class Test extends StatelessWidget {
  TabController _controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Test",
                style: TextStyle(
                    fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: kBlackColor,
                ),
              ),
              bottom:  TabBar(
                onTap: (index) {
                  // Tab index when user select it, it start from zero
                },

                tabs: [
                  Tab(text: "Turnout",),
                  Tab(text: "Evaluation",),
                ],
              ),

            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton.extended(
              onPressed: (){},
              label: Text(
                "Reward",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: kBlackColor,
                ),
              ),
              backgroundColor: kPrimaryColor,
            ),
            body: TabBarView(

              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Column(
                      children: [
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
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  );
                                })),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                        ),                          child: Text(
                          "Question Paper Title",
                          style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kBlackColor,
                          ),
                        ),
                      ),SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                        ),                          child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text(
                                    "LAST DATE FOR SUBMISSION",
                                    style: TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w400,
                                      color: kBlackColor,
                                    ),
                                  ),Text(
                                    "18/04/21 6:00 pm",
                                    style: TextStyle(
                                      fontSize: 14,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w600,
                                      color: kBlackColor,
                                    ),
                                  ),
                                ],
                              ), Row(

                                children: [
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
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                        ),                          child: Text(
                          "Learning Outcomes",
                          style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kGreyColor
                            ,
                          ),
                        ),
                      ),SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                        ),                          child: Text(
                          "# Concept of History",
                          style: TextStyle(
                            fontSize: 11,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kBlackColor,
                          ),
                        ),
                      ),SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                        ),                        child: Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          height: 1,
                          color: kBlackColor,
                        ),
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (BuildContext context, int index){
                                return Padding(
                                  padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width * 0.01,
                                    right: MediaQuery.of(context).size.width * 0.01,
                                      bottom: 5

                                  ),
                                  child: Container(
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: kLightColor,
                                      border: Border.all(
                                        width: 0.1,
                                        color: kGreyColor
                                      ),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: MediaQuery.of(context).size.width * 0.1,
                                          right: MediaQuery.of(context).size.width * 0.0,
                                        ),
                                        child: Container(
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.blue,
                                                radius: 25,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Masood Ahmed",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  decoration: TextDecoration.none,
                                                  fontWeight: FontWeight.w600,
                                                  color: kBlackColor,
                                                ),
                                              ),
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width*0.3,
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
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
                                                        Icons.menu,
                                                        color: kBlackColor,
                                                        size: 20,
                                                      ),


                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ]),
                                        ),
                                      )],
                                  ),
                                ),
                                );
                              })),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
