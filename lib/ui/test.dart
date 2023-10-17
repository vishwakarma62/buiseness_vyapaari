
import 'package:buiseness_vyapaari/model/formdata.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  TextEditingController? email;
  TextEditingController? password;
  @override
  void initState() {
    getdata();
    super.initState();
  }

  void getdata() async {
    final box = await Hive.openBox("myclassbox");
    //final obj = FormData();
    final getdata = box.get('form');
    if (getdata != null) {
      setState(() {
        email = TextEditingController(text: getdata.name);
        password = TextEditingController(text: getdata.password);
      });
    }
  }

  bool showupdateddata = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
          child: Column(
            children: [
              TextFormField(
                controller: email,
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                controller: password,
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(),
              SizedBox(
                height: 12,
              ),
              TextButton(
                onPressed: () async {
                  setState(() {
                    showupdateddata = true;
                  });
                  final box = await Hive.openBox("myclassbox");
                  final obj =
                      FormData(name: email!.text, password: password!.text);
                      box.put('form', obj);
                      

                },
                child: Text("click"),
              ),
              SizedBox(
                height: 20,
              ),
              if (showupdateddata)
                Column(
                  children: [
                    TextFormField(
                      controller: email,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      controller: password,
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
