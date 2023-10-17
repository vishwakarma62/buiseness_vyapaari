
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightwhite2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 310,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  "In Order to serve all type of Ahemedabad business owners,"
                  "the organization plans to create the Ahemedabad Vepari Mahajan"
                  "Mobile Application.Individuals and numerous enterprises with"
                  "varied members may register using the AVM app.Indivisual"
                  "registered business owners can take advantages of offers from"
                  "other registered firms by using the AVM Mobile App.sjdhfjshfvsfvkhgdkgfvksdjgdsfgddsfgsdgfsgffvsfscvgefgdfhfgdddddddddddddddddddddddddddddddddddfgdsgdssssssfffffffffffffffffffffffffffffffffffffffffffffffffffdsgfdssshhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhtddddddddddddddddddddddddddddddddddddddddddddddddddddd"),
            ),
          ),
        ),
      ),
    );
  }
}
