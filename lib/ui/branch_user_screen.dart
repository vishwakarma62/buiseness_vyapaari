
import 'package:buiseness_vyapaari/model/branch_model.dart';
import 'package:buiseness_vyapaari/ui/list.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:buiseness_vyapaari/widget/branch_widget_page.dart';
import 'package:flutter/material.dart';

class BranchUserScreenPage extends StatefulWidget {
  const BranchUserScreenPage({super.key});

  @override
  State<BranchUserScreenPage> createState() => _BranchUserScreenPageState();
}

class _BranchUserScreenPageState extends State<BranchUserScreenPage> {
  List<BranchModelPage> BranchList = [
    BranchModelPage(
        id: "1",
        Image: "assets/icons/greencity.jpg",
        Name: "New World",
        Title: "Gbh"),
    BranchModelPage(
        id: "1",
        Image: "assets/icons/greencity.jpg",
        Name: "New World",
        Title: "Gbh"),
    BranchModelPage(
        id: "1",
        Image: "assets/icons/greencity.jpg",
        Name: "New World",
        Title: "Gbh"),
    BranchModelPage(
        id: "1",
        Image: "assets/icons/greencity.jpg",
        Name: "New World",
        Title: "Gbh"),
    BranchModelPage(
        id: "1",
        Image: "assets/icons/greencity.jpg",
        Name: "New World",
        Title: "Gbh"),
    BranchModelPage(
        id: "1",
        Image: "assets/icons/greencity.jpg",
        Name: "New World",
        Title: "Gbh"),
    BranchModelPage(
        id: "1",
        Image: "assets/icons/greencity.jpg",
        Name: "New World",
        Title: "Gbh"),
    BranchModelPage(
        id: "1",
        Image: "assets/icons/greencity.jpg",
        Name: "New World",
        Title: "Gbh"),
    BranchModelPage(
        id: "1",
        Image: "assets/icons/greencity.jpg",
        Name: "New World",
        Title: "Gbh"),
    BranchModelPage(
        id: "1",
        Image: "assets/icons/greencity.jpg",
        Name: "New World",
        Title: "Gbh"),
    BranchModelPage(
        id: "1",
        Image: "assets/icons/greencity.jpg",
        Name: "New World",
        Title: "Gbh"),
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
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ListScreenPage();
                        }));
                      },
                      child: Row(
                        children: [
                          Text(
                            "Select Business",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "assets/icons/dd.png",
                            width: 12,
                          )
                        ],
                      ),
                      //splashColor: Colors.amber,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/add_listing.png",
                          width: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Add New")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return BranchWidgetPage(branch: BranchList[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: BranchList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
