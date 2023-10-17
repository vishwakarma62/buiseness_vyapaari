
import 'package:buiseness_vyapaari/ui/about_member_screen_page.dart';
import 'package:buiseness_vyapaari/ui/history.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.darkblue,
          centerTitle: true,
          title: Text(
            "About US",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          automaticallyImplyLeading: false,
          leading: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: Transform.scale(
                scale: 0.7,
                child: Image.asset(
                  "assets/icons/ic_back.png",
                  fit: BoxFit.fitHeight,
                  color: Colors.white,
                )),
          ),
          bottom: TabBar(splashFactory: NoSplash.splashFactory,
              isScrollable: false,
              indicatorColor: AppColor.Orange, // Remove the default indicator
              labelColor: Colors.orange, // Set the default label color
              unselectedLabelColor:
                  Colors.white, // Set the unselected label color
              labelStyle: TextStyle(fontSize: 18),

              // indicatorColor: AppColor.Orange,
              // indicatorWeight: 5,
              tabs: [
                Tab(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.refresh_sharp),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "History",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                Tab(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.people_sharp),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Member",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ]),
        ),
        body: TabBarView(
          children: [HistoryPage(), AboutMemberScreenPage()],
        ),
      ),
    );
  }
}
