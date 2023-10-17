
import 'package:buiseness_vyapaari/model/business_model.dart';
import 'package:flutter/material.dart';

class BusinessWidgetPage extends StatefulWidget {
  BusinessWidgetPage({super.key, required this.mybusiness});
  MyBusinessModel mybusiness;

  @override
  State<BusinessWidgetPage> createState() => _BusinessWidgetPageState();
}

class _BusinessWidgetPageState extends State<BusinessWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 60,
                    height: MediaQuery.of(context).size.height,
                    //height: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/icons/profile.png",
                          fit: BoxFit.cover,
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.mybusiness.Name}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${widget.mybusiness.Title}",
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  
  }
}
