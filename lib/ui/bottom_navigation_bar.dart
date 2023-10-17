
import 'package:buiseness_vyapaari/ui/addbusiness.dart';
import 'package:buiseness_vyapaari/ui/business_user_screen.dart';
import 'package:buiseness_vyapaari/ui/home_page_screen.dart';
import 'package:buiseness_vyapaari/ui/offer.dart';
import 'package:buiseness_vyapaari/ui/profile_page.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({super.key, required this.index});
  int index;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  void initState() {
    setState(() {
      _selectedindex = widget.index;
    });
    super.initState();
  }

  bool home = true;
  var Directory = false;
  var AddBusinessPage = false;
  var Offer = false;
  var Profile = false;
  int _selectedindex = 0;

  final List<Map<String, dynamic>> _Pagedetails = [
    {
      'pageName': const HomePageScreen(),
      'title': 'Home',
    },
    {
      'pageName': const BusinessUserScreen(),
      'title': 'Business Directory',
    },
    {
      'pageName': const AddBusiness(),
      'title': 'Add New Business',
    },
    {
      'pageName': const OfferPage(),
      'title': 'Offer Business',
    },
    {
      'pageName': const ProfilePage(),
      'title': 'Profile',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _selectedindex = 0;
                  home = true;
                  Directory = false;
                  AddBusinessPage = false;
                  Offer = false;
                  Profile = false;
                });
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/home_blue.png",
                        width: 20,
                        color: _selectedindex == 0
                            ? AppColor.darkblue
                            : AppColor.lightblack),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedindex = 1;
                  home = false;
                  Directory = true;
                  AddBusinessPage = false;
                  Offer = false;
                  Profile = false;
                });
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/listing.png",
                        width: 20,
                        color: _selectedindex == 1
                            ? AppColor.darkblue
                            : AppColor.lightblack),
                    Text(
                      "Directory",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedindex = 2;
                  home = false;
                  Directory = false;
                  AddBusinessPage = true;
                  Offer = false;
                  Profile = false;
                });
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/add_listing.png",
                      width: 20,
                    ),
                    Text(
                      "Add Business",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedindex = 3;
                  home = false;
                  Directory = false;
                  AddBusinessPage = false;
                  Offer = true;
                  Profile = false;
                });
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/offer1.png",
                        width: 20,
                        color: _selectedindex == 3
                            ? AppColor.darkblue
                            : AppColor.lightblack),
                    Text(
                      "Offer",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedindex = 4;
                  home = false;
                  Directory = false;
                  AddBusinessPage = false;
                  Offer = false;
                  Profile = true;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/man_user.png",
                      width: 20,
                      color: _selectedindex == 4
                          ? AppColor.darkblue
                          : AppColor.lightblack),
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: _Pagedetails[_selectedindex]['pageName'],
    );
  }
}
