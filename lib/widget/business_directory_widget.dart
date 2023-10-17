
import 'package:buiseness_vyapaari/model/business_class.dart';
import 'package:flutter/material.dart';

class BusinessDirectoryWidget extends StatefulWidget {
  BusinessDirectoryWidget({super.key, required this.business});
  BusinessDirectory business;

  @override
  State<BusinessDirectoryWidget> createState() =>
      _BusinessDirectoryWidgetState();
}

class _BusinessDirectoryWidgetState extends State<BusinessDirectoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 350,
       // height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 75,
                  height: 75,
                  //height: MediaQuery.of(context).size.height,
                  //height: 80,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "${widget.business.Image}",
                        fit: BoxFit.cover,
                      ))),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.business.Name}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
            
                  Text(
                  "${widget.business.Title}",
                 // overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 13),
                  ),
                  Row(
                  children: [
                    Container(
                      //height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/icons/user.png"),
                          ),),
                          Text("${widget.business.UserName}",style: TextStyle(fontSize: 13),),
            
                  ],
                  ),  ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
