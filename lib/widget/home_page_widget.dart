
import 'package:buiseness_vyapaari/model/home-page-model.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
   HomePageWidget({super.key,required this.home});
  HomepageModel home;

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:18.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Container(
              width: 60,
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset("${widget.home.IMGurl}",fit: BoxFit.cover,)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text("${widget.home.Item}",style: TextStyle(fontWeight: FontWeight.bold),),
                 Text("${widget.home.Name}"),
              ],),
            )
          ],),
        ),
      ),
    );
    
  }
}