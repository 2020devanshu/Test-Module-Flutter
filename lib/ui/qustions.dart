import 'package:flutter/material.dart';
import 'package:teacher_app/ui/constants.dart';
import 'package:teacher_app/ui/practice.dart';

class QuestionPaper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          title: Text(
            "QUESTION PAPER",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.05),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: kGreyColor, width: 0.5)),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 4,
                        right: 4,
                        bottom: 2,
                        top: 2,),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: kPrimaryColor,
                          ),
                          Text(
                            "Me",
                            style: TextStyle(color: kPrimaryColor, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: kGreyColor, width: 0.5)),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 4,
                        right: 4,
                        bottom: 2,
                        top: 2,),
                      child: Icon(
                        Icons.group,
                        color: kGreyColor,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
            // shape: RoundedRectangleBorder(),
          backgroundColor: kLightColor,
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return PracticeQuestionPaper();
            }));
            },
            label: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             Text(
              "Create A New",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: kBlackColor),
            ), Text(
              "Question Paper",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: kBlackColor),
            ),

          ],
        )),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                alignment: Alignment.centerRight,
                height: 70,
                child: Icon(
                  Icons.filter_list,
                  color: Colors.red,
                  size: 36,
                ),
              ),
              Expanded(child: ListView.builder(
                itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                      bottom: 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 140,
                    decoration: BoxDecoration(
                        color: kLightColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(

                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.03,
                          right: MediaQuery.of(context).size.width * 0.03,
                          bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: kDarkColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 4,
                                          right: 4,
                                          bottom: 2,
                                          top: 2,),
                                      child: Text(
                                        "Class 1",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: kWhiteColor),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Center(
                                    child: Text(
                                      "#001",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: kBlackColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Question Paper Title",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor),
                          ),
                          Text(
                            "Total Question - 20",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: kBlackColor),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(

                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: kPrimaryColor,
                                      ),
                                      Text(
                                        "Me",
                                        style: TextStyle(color: kPrimaryColor, fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                                Container(

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Used - 23 times",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: kBlackColor),
                                      ),Text(
                                        "Last Used - 29 days ago",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: kBlackColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
