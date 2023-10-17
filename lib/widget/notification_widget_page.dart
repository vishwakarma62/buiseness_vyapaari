
import 'package:buiseness_vyapaari/model/notification_model_class.dart';
import 'package:flutter/material.dart';

class NotificationWidgetPage extends StatefulWidget {
  NotificationWidgetPage({super.key, required this.notification});
  NotificationModel notification;

  @override
  State<NotificationWidgetPage> createState() => _NotificationWidgetPageState();
}

class _NotificationWidgetPageState extends State<NotificationWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
        child: Container(
          width: 350,
          //height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.notification.Name}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "${widget.notification.Date}",
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "${widget.notification.Status}",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
