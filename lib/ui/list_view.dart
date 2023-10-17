
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightwhite2,
      body: Padding(
        padding: const EdgeInsets.only(top:10,left: 18,right: 18),
        child: Column(
          children: [
            Row(children: [
              Text("Offer Business List",style: TextStyle(fontSize: 18,color: AppColor.darkblue,fontWeight: FontWeight.bold),),
              Spacer(),
              Container(
                              width: 35,
                              height: 35,
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
                            
            ],),
            Expanded(child: Container(child: Center(child: Text("No Internet"))))
          ],
        ),
      ),
    );
  }
}