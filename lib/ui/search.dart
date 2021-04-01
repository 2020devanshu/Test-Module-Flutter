import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teacher_app/ui/constants.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kLightColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Search",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: kBlackColor,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
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
              Text(
                "Faculty",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: kBlackColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: kGreyColor
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: TextField(
                    cursorColor: kGreyColor,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,
                      color: kGreyColor),
                      labelText: "Search",
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
                height: 10,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 2,
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
                                    "Masood Ahmed",
                                    style: TextStyle(
                                      fontSize: 14,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w600,
                                      color: kBlackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        );
                      })),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 80,
                  alignment: Alignment.bottomCenter,

                  child: Center(
                    child: Text(
                      "The list only shows faculty that have"
                     " Created Question Papers",
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    ));
  }
}
