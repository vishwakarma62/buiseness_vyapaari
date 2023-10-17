
import 'package:buiseness_vyapaari/model/branch_model.dart';
import 'package:flutter/material.dart';

class BranchWidgetPage extends StatefulWidget {
  BranchWidgetPage({super.key, required this.branch});
  BranchModelPage branch;

  @override
  State<BranchWidgetPage> createState() => _BranchWidgetPageState();
}

class _BranchWidgetPageState extends State<BranchWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          "${widget.branch.Image}",
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
                      "${widget.branch.Name}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${widget.branch.Title}",
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
