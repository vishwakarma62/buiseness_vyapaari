
import 'package:buiseness_vyapaari/model/notification_model_class.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:buiseness_vyapaari/widget/notification_widget_page.dart';
import 'package:flutter/material.dart';

class NotificationUserScreen extends StatefulWidget {
  const NotificationUserScreen({super.key});

  @override
  State<NotificationUserScreen> createState() => _NotificationUserScreenState();
}

class _NotificationUserScreenState extends State<NotificationUserScreen> {
  List<NotificationModel> notificationlist = [
    NotificationModel(
        id: "1",
        Name: "Request Sent",
        Date: "Thu, Feb 9, 2023 10:06",
        Status: "New Member added Request Sent"),
    NotificationModel(
        id: "2",
        Name: "Recieced Membership",
        Date: "Thu, Feb 9, 2023 05:14",
        Status: "New Member added Request Sent"),
    NotificationModel(
        id: "3",
        Name: "Request Sent",
        Date: "wed, Feb 8, 2023 13:25",
        Status: "New Member added Request Sent"),
    NotificationModel(
        id: "4",
        Name: "Request Sent",
        Date: "Thu, Feb 9, 2023 10:06",
        Status: "New Member added Request Sent"),
    NotificationModel(
        id: "5",
        Name: "Request Sent",
        Date: "wed, Feb 9, 2023 13:23",
        Status: "New Member added Request Sent"),
    NotificationModel(
        id: "6",
        Name: "Request Sent",
        Date: "Thu, Feb 9, 2023 10:06",
        Status: "New Member added Request Sent"),
    NotificationModel(
        id: "8",
        Name: "New Offer",
        Date: "Thu, Oct 9, 2023 02:40",
        Status: "New Member added Request Sent"),
    NotificationModel(
        id: "9",
        Name: "New Offer",
        Date: "Fri, Sep 30, 2023 10:06",
        Status: "New Member added Request Sent"),
    NotificationModel(
        id: "10",
        Name: "New Offer",
        Date: "Fri, Sep 30, 2023 10:06",
        Status: "New Member added Request Sent"),
    NotificationModel(
        id: "7",
        Name: "Request Sent",
        Date: "Fri, Sep 30, 2023 10:06",
        Status: "New Member added Request Sent"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.lightwhite2,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45)),
        ),
        automaticallyImplyLeading: false,
        leading: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
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
        centerTitle: true,
        backgroundColor: AppColor.darkblue,
        title: Text(
          "Notification",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: ListView.separated(
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return NotificationWidgetPage(
                    notification: notificationlist[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 00,
                );
              },
              itemCount: notificationlist.length)),
    );
  }
}
