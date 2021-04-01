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
                  itemCount: 25,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (orientation == Orientation.portrait) ? 4 : 3),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.07,
                        right: MediaQuery.of(context).size.width * 0.05,
                        bottom: MediaQuery.of(context).size.width * 0.12
                      ),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
