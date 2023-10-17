
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';

class OfferList extends StatefulWidget {
  const OfferList({super.key});

  @override
  State<OfferList> createState() => _OfferListState();
}

class _OfferListState extends State<OfferList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.darkblue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45)),
          ),
          centerTitle: true,
          title: Text(
            "Offerr List",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          automaticallyImplyLeading: false,
          leading: InkWell(highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        splashFactory: NoSplash.splashFactory,
            onTap: () {
              Navigator.pop(context);
            },
            child: Transform.scale(
                scale: 0.7,
                child: Image.asset(
                  "assets/icons/ic_back.png",
                  fit: BoxFit.fitHeight,
                  color: Colors.orange,
                )),
          )),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Row(
              children: [
                Text("My Offer List",style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/add_listing.png",
                      width: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Add New")
                  ],
                ),
              ],
            ),
          ),
          Expanded(child: Container(child: Center(child: Text("No any Offer Found")))),
        ],
      ),
    );
  }
}
