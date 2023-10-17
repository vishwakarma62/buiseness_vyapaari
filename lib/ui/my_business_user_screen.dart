
import 'package:buiseness_vyapaari/model/business_model.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:buiseness_vyapaari/widget/my_business_widget.dart';
import 'package:flutter/material.dart';

class MyBusinessUserScreen extends StatefulWidget {
  const MyBusinessUserScreen({super.key});

  @override
  State<MyBusinessUserScreen> createState() => _MyBusinessUserScreenState();
}

class _MyBusinessUserScreenState extends State<MyBusinessUserScreen> {
  List<MyBusinessModel> MyBusinessList = [
    MyBusinessModel(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Bhel Puri",
        Title: "Bhel"),
    MyBusinessModel(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Bhel Puri",
        Title: "Bhel"),
    MyBusinessModel(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Bhel Puri",
        Title: "Bhel"),
    MyBusinessModel(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Bhel Puri",
        Title: "Bhel"),
    MyBusinessModel(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Bhel Puri",
        Title: "Bhel"),
    MyBusinessModel(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Bhel Puri",
        Title: "Bhel"),
    MyBusinessModel(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Bhel Puri",
        Title: "Bhel"),
    MyBusinessModel(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Bhel Puri",
        Title: "Bhel"),
    MyBusinessModel(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Bhel Puri",
        Title: "Bhel"),
    MyBusinessModel(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Bhel Puri",
        Title: "Bhel"),
    MyBusinessModel(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Bhel Puri",
        Title: "Bhel"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColor.lightwhite2,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return BusinessWidgetPage(
                          mybusiness: MyBusinessList[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 0,
                      );
                    },
                    itemCount: MyBusinessList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
