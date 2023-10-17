
import 'package:buiseness_vyapaari/model/business_class.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:buiseness_vyapaari/widget/listwidget.dart';
import 'package:flutter/material.dart';

class ListScreenPage extends StatefulWidget {
  const ListScreenPage({super.key});

  @override
  State<ListScreenPage> createState() => _ListScreenPageState();
}

class _ListScreenPageState extends State<ListScreenPage> {
  List<BusinessDirectory> mylist=[
    BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
     BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
      BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
       BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
        BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
     BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
      BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
       BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
        BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
     BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
      BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
       BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
        BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
     BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
      BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
       BusinessDirectory(id: "1", Image: "", Name: "Hello", Title: "this is listtile", UserName: ""),
      
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColor.lightwhite2,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTileWidget(
                          listobject: mylist[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 0,
                      );
                    },
                    itemCount: mylist.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}