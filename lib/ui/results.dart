import 'package:flutter/material.dart';
import 'package:teacher_app/ui/constants.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 130,
                width: MediaQuery.of(context).size.width*0.98,
                decoration: BoxDecoration(
                  color: kLightColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: kGreyColor,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Student Name",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kBlackColor,
                          ),
                        ),Text(
                          "Time token",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor,
                          ),
                        ),

                      ],
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
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (orientation == Orientation.portrait) ? 4 : 3),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.07,
                        bottom: MediaQuery.of(context).size.width * 0.07,
                        right: MediaQuery.of(context).size.width * 0.05,
                          top: MediaQuery.of(context).size.width * 0.05

                      ),
                      child: Container(

                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.lightGreen,
                              spreadRadius: 0.5,
                              blurRadius: 5
                            )
                          ]
                        ),
                        child: Center(
                          child: Text(
                            "Q ${index+1}",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: kWhiteColor
                            ),
                          ),
                        )
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  bottom: MediaQuery.of(context).size.width * 0.0,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Add Grades:",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.red
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.2,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width:
                            0.5,
                          color: kGreyColor
                        )
                      ),
                      child: Center(
                        child: Text(
                          "15     /   50",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.red
                          ),
                        ),
                      ),
                    )
                  ]
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  bottom: MediaQuery.of(context).size.width * 0.0,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),                  child: Container(
                  child: Text(
                    "Feedback Type :",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.red
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  bottom: MediaQuery.of(context).size.width * 0.0,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),                  child: Container(
                decoration: BoxDecoration(
                  color: kLightColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                  height: 150,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      top: 10,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),                         child: Column(
                      children: [
                        Row(
                            children: [
                              CircleAvatar(
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Sandeep (Teacher) \n Evaluated Notes",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: kGreyColor
                                ),
                              ),
                            ]
                        ),
                        Container(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                                " Neque tristique cursus vel iaculis varius vitae egestas interdum. "
                                "Cursus dui auctor nulla lobortis hendrerit duis tincidunt purus gravida. ",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: kBlackColor
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: 50,
                decoration: BoxDecoration(
                  color: kGreyColor,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Center(
                  child: Text(
                    "Marked Checked",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: kBlackColor
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )

            ],
          ),
        ),
      ),
    );
  }
}
