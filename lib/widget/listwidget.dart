
import 'package:buiseness_vyapaari/model/business_class.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  ListTileWidget({super.key, required this.listobject});
  BusinessDirectory listobject;

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("${widget.listobject.Name}"),
          subtitle: Text("${widget.listobject.Title}"),
          tileColor: AppColor.lightwhite2,
        ),
        Divider(
          thickness: 0.5,
          color: Colors.grey,
        ),
      ],
    );
  }
}
