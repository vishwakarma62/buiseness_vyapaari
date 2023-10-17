
import 'package:buiseness_vyapaari/model/home-page-model.dart';
import 'package:buiseness_vyapaari/ui/Offe%20r%20List.dart';
import 'package:buiseness_vyapaari/ui/abou_us.dart';
import 'package:buiseness_vyapaari/ui/bottom_navigation_bar.dart';
import 'package:buiseness_vyapaari/ui/change_password.dart';
import 'package:buiseness_vyapaari/ui/gallary_screen.dart';
import 'package:buiseness_vyapaari/ui/login_page.dart';
import 'package:buiseness_vyapaari/ui/my_business_page.dart';
import 'package:buiseness_vyapaari/ui/notification_user_screen.dart';
import 'package:buiseness_vyapaari/ui/payment_user_screen.dart';
import 'package:buiseness_vyapaari/ui/transaction_history_user_screen.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:buiseness_vyapaari/widget/home_page_widget.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<HomepageModel> HomePageList = [
    HomepageModel(
        IMGurl: "assets/icons/profile.png", Item: "Test Check", Name: "-"),
    HomepageModel(
        IMGurl: "assets/icons/profile.png", Item: "Test Check", Name: "-"),
    HomepageModel(
        IMGurl: "assets/icons/profile.png", Item: "Test Check", Name: "-"),
    HomepageModel(
        IMGurl: "assets/icons/profile.png", Item: "Test Check", Name: "-"),
    HomepageModel(
        IMGurl: "assets/icons/profile.png", Item: "Test Check", Name: "-"),
    HomepageModel(
        IMGurl: "assets/icons/profile.png", Item: "Test Check", Name: "-"),
    HomepageModel(
        IMGurl: "assets/icons/profile.png", Item: "Test Check", Name: "-"),
    HomepageModel(
        IMGurl: "assets/icons/profile.png", Item: "Test Check", Name: "-"),
    HomepageModel(
        IMGurl: "assets/icons/profile.png", Item: "Test Check", Name: "-"),
    HomepageModel(
        IMGurl: "assets/icons/profile.png", Item: "Test Check", Name: "-"),
    HomepageModel(
        IMGurl: "assets/icons/profile.png", Item: "Test Check", Name: "-"),
  ];
  final search = TextEditingController();
  void _showLogoutConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        "Are you sure you want to logout ? ",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: SizedBox(
                            width: 115,
                            child: ElevatedButton(
                              onPressed: () {
                                // Close the pop-up dia
                                // log
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.darkblue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 115,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.popUntil(
                                  context, (route) => route.isFirst);
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              }));
                            },
                            child: Text(
                              "Logout",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.darkblue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColor.darkblue,
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                  width: 20,
                  height: 20,
                  child: Image.asset(
                    "assets/icons/icons8-qr-code-64.png",
                    fit: BoxFit.cover,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NotificationUserScreen();
                }));
              },
              child: Container(
                width: 20,
                height: 20,
                child: Image.asset(
                  "assets/icons/notification_off.png",
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ], //automaticallyImplyLeading: false,
        
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45)),
          ),
          centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
      body: Container(
        // width: MediaQuery.of(context).size.width,
        //  height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: AppColor.lightwhite2,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: TextFormField(
                    controller: search,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: SizedBox(
                              width: 5,
                              height: 5,
                              child: Image.asset("assets/icons/search.png")),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "search",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Text(
                        "Current Business",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "View More",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    //physics: ,
                    itemBuilder: (context, index) {
                      return HomePageWidget(home: HomePageList[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: HomePageList.length),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: AppColor.darkblue,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(40)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, right: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/ANI-20230531172041.jpg"),
                      backgroundColor: AppColor.white,
                      radius: 32,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "kk",
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                        Text(
                          "kk@mailinator.com",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: Image.asset(
                      "assets/images/opacity.png",
                      fit: BoxFit.fill,
                    )),
                    ListView(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BottomNavigation(index: 4,);
                            }));
                          },
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/user.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "My Profile",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MyBusinesspage();
                            }));
                          },
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/my_business.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "My Business",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return OfferList();
                            }));
                          },
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/offer.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "My Offer",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PaymentUserScreen();
                            }));
                          },
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/payment.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Payment",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return TransactionHistoryScreen();
                            }));
                          },
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/t_hisotry.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Transaction History",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return NotificationUserScreen();
                            }));
                          },
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/notification_off.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Notification",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/complains.png",
                              width: 25,
                              height: 25,
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Complaints",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AboutUsPage();
                            }));
                          },
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/about.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "About Us",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return GallaryUserScreen();
                            }));
                          },
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/gallery.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Gallery",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/contact_us.png",
                              width: 25,
                              height: 25,
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Contact Us",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/terms_conditons.png",
                              width: 25,
                              height: 25,
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Terms Conditions",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/privacy2.png",
                              width: 25,
                              height: 25,
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Privacy Policy",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ChangePassword();
                            }));
                          },
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/lock.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Change Password",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/settings2.png",
                              width: 25,
                              height: 25,
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Settings",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _showLogoutConfirmation();
                          },
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/logout.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Logout",
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
