
import 'package:buiseness_vyapaari/model/business_class.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:buiseness_vyapaari/widget/transaction_history.dart';
import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({super.key});

  @override
  State<TransactionHistoryScreen> createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  List<BusinessDirectory> TransactionList = [
    BusinessDirectory(
        id: "1",
        Image: "₹100",
        Name: "Initial Payment",
        Title: "Fail",
        UserName: "| April 28 23"),
    BusinessDirectory(
        id: "1",
        Image: "₹100",
        Name: "Initial Payment",
        Title: "Fail",
        UserName: "| April 27 23"),
    BusinessDirectory(
        id: "1",
        Image: "₹100",
        Name: "Initial Payment",
        Title: "Fail",
        UserName: "| April 26 23"),
    BusinessDirectory(
        id: "1",
        Image: "₹200",
        Name: "Initial Payment",
        Title: "Fail",
        UserName: "| April 25 23"),
    BusinessDirectory(
        id: "1",
        Image: "₹200",
        Name: "Initial Payment",
        Title: "Fail",
        UserName: "| April 24 23"),
    BusinessDirectory(
        id: "1",
        Image: "₹200",
        Name: "Initial Payment",
        Title: "Fail",
        UserName: "| April 23 23"),
    BusinessDirectory(
        id: "1",
        Image: "₹200",
        Name: "Initial Payment",
        Title: "Fail",
        UserName: "| April 22 23"),
    BusinessDirectory(
        id: "1",
        Image: "₹1000",
        Name: "Initial Payment",
        Title: "Fail",
        UserName: "| April 21 23"),
    BusinessDirectory(
        id: "1",
        Image: "₹1000",
        Name: "Initial Payment",
        Title: "Fail",
        UserName: "| April 20 23"),
    BusinessDirectory(
        id: "1",
        Image: "₹1000",
        Name: "Initial Payment",
        Title: "Fail",
        UserName: "| April 19 23"),
    BusinessDirectory(
        id: "1",
        Image: "₹2000",
        Name: "Initial Payment",
        Title: "Fail",
        UserName: "| April 18 23"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: AppColor.darkblue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45)),
          ),
          centerTitle: true,
          title: Text(
            "Transaction History",
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
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return TransactionHistory(
                          transaction: TransactionList[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 00,
                      );
                    },
                    itemCount: TransactionList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
