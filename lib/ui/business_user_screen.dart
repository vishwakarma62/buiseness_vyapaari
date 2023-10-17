
import 'package:buiseness_vyapaari/model/business_class.dart';
import 'package:buiseness_vyapaari/ui/login_page.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:buiseness_vyapaari/widget/business_directory_widget.dart';
import 'package:flutter/material.dart';

class BusinessUserScreen extends StatefulWidget {
  const BusinessUserScreen({super.key});

  @override
  State<BusinessUserScreen> createState() => _BusinessUserScreenState();
}

class _BusinessUserScreenState extends State<BusinessUserScreen> {
  List<BusinessDirectory> Businesslist = [
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Timber Merchant",
        Title:
            "Manufacturer of Sagwan Wood, Distributor Everest Cement Boards.",
        UserName: "Vinod Bindrani"),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Vinod Bindrani",
        Title: "Vegetable Commision Agent",
        UserName: "Vinod Bindrani"),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/man.png",
        Name: "Vinod Bindrani",
        Title: "Vegetable Commision Agent",
        UserName: "Vinod Bindrani"),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Vinod Bindrani",
        Title: "Vegetable Commision Agent",
        UserName: "Vinod Bindrani"),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Vinod Bindrani",
        Title: "Vegetable Commision Agent",
        UserName: "Vinod Bindrani"),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Vinod Bindrani",
        Title: "Vegetable Commision Agent",
        UserName: "Vinod Bindrani"),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Vinod Bindrani",
        Title: "Vegetable Commision Agent",
        UserName: "Vinod Bindrani"),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Vinod Bindrani",
        Title: "Vegetable Commision Agent",
        UserName: "Vinod Bindrani"),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "Vinod Bindrani",
        Title: "Vegetable Commision Agent",
        UserName: "Vinod Bindrani")
  ];
  var home = true;
  var Directory = false;
  var AddBusiness = false;
  var Offer = false;
  var Profile = false;

  void _showLogoutConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text("Logout"),
          content: Text("Are you sure you want to log out?"),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 105,
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
                SizedBox(
                  width: 105,
                  child: ElevatedButton(
                    onPressed: () {
                      // Clear any user session or data if necessary
                      // For now, just navigate back to the login page
                      //Navigator.pop(context); // Close the pop-up dialog
                      Navigator.popUntil(context, (route) => route.isFirst);
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      })); // Navigate to the login page
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
              ],
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
      backgroundColor: AppColor.lightblack,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
      

        title: Text(
          "Business Directory",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
        ),

        backgroundColor: AppColor.darkblue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45)),
        ),
        centerTitle: true,
  
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppColor.lightwhite2,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Text(
                        "Business Directory",
                        style:
                            TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              child: Image.asset(
                            "assets/icons/filter.png",
                            fit: BoxFit.fill,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                    itemBuilder: (context, index) {
                      return BusinessDirectoryWidget(
                          business: Businesslist[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: Businesslist.length),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
