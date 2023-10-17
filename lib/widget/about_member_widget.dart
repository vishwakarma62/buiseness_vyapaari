import 'package:buiseness_vyapaari/model/member_model.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';

import 'package:flutter/material.dart';

class AboutMemberWidget extends StatefulWidget {
  AboutMemberWidget({super.key, required this.aboutmember});
  AboutMemberModel aboutmember;

  @override
  State<AboutMemberWidget> createState() => _AboutMemberWidgetState();
}

class _AboutMemberWidgetState extends State<AboutMemberWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        //width: MediaQuery.of(context).size.width,
        //height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "${widget.aboutmember.Image}",
                        fit: BoxFit.cover,
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(
                      "${widget.aboutmember.Name}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Designation:",
                        style: TextStyle(color: AppColor.lightblack),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${widget.aboutmember.post}",
                        style: TextStyle(color: AppColor.lightblack),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Mobile No.",
                        style: TextStyle(color: AppColor.lightblack),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text("${widget.aboutmember.mobile}"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
