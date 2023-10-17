
import 'package:buiseness_vyapaari/ui/branch_user_screen.dart';
import 'package:buiseness_vyapaari/ui/member_user_screen_page.dart';
import 'package:buiseness_vyapaari/ui/my_business_user_screen.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';

class MyBusinesspage extends StatefulWidget {
  const MyBusinesspage({super.key});

  @override
  State<MyBusinesspage> createState() => _MyBusinesspageState();
}

class _MyBusinesspageState extends State<MyBusinesspage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: AppColor.darkblue,

              centerTitle: true,
              title: Text(
                "My Businessr",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              automaticallyImplyLeading: false,
              leading: InkWell(
                splashFactory: NoSplash.splashFactory,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Transform.scale(
                    scale: 0.7,
                    child: Image.asset(
                      "assets/icons/ic_back.png",
                      fit: BoxFit.fitHeight,
                      color: Colors.orange,
                    )),
              ),
              bottom: TabBar(splashFactory:  NoSplash.splashFactory,
                  isScrollable: true,
                  indicatorColor: AppColor.Orange,
                  labelColor: Colors.orange,
                  unselectedLabelColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 18),
                  tabs: [
                    Tab(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.map_sharp),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Business",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                    Tab(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.list_sharp),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Branch",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                    Tab(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.list_sharp),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Member",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                  ])),
                  body:  TabBarView(clipBehavior: Clip.none,
            children: [
            MyBusinessUserScreen(),
            BranchUserScreenPage(),
            MemberUserScreenPage(), 
            ],
          ),
        ));
  }
}
