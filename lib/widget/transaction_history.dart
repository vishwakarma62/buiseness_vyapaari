
import 'package:buiseness_vyapaari/model/business_class.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  TransactionHistory({super.key,required this.transaction});
  BusinessDirectory transaction;

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${widget.transaction.Name}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  Text("${widget.transaction.Image}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green)),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "${widget.transaction.Title}",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "${widget.transaction.UserName}",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
