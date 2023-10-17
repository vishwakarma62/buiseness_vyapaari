
import 'package:buiseness_vyapaari/model/business_class.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:buiseness_vyapaari/widget/payment.dart';
import 'package:flutter/material.dart';

class PaymentUserScreen extends StatefulWidget {
  const PaymentUserScreen({super.key});

  @override
  State<PaymentUserScreen> createState() => _PaymentUserScreenState();
}

class _PaymentUserScreenState extends State<PaymentUserScreen> {
  List<BusinessDirectory> PaymentList = [
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
    BusinessDirectory(
        id: "1",
        Image: "assets/icons/profile.png",
        Name: "My Business",
        Title: "Bhel",
        UserName: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar( backgroundColor: AppColor.darkblue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45)),
          ),
          centerTitle: true,
          title: Text(
            "Payment",
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
      body: Container(
        decoration: BoxDecoration(
          color: AppColor.lightwhite2,
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return PaymentPage(payment: PaymentList[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: PaymentList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
