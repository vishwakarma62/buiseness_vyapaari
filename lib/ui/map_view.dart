
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';

class MapViewPage extends StatefulWidget {
  const MapViewPage({super.key});

  @override
  State<MapViewPage> createState() => _MapViewPageState();
}

class _MapViewPageState extends State<MapViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightwhite2,
      body: Center(child: Text("No Internet")),
    );
  }
}