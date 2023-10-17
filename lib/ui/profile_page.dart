
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Name = TextEditingController();
  final DOB = TextEditingController();
  TextEditingController Mail = TextEditingController();
  final Phone = TextEditingController();
  final AdharCardNumber = TextEditingController();
  final BloodGroup = TextEditingController();
  final Address = TextEditingController();
  final MemberID = TextEditingController();
  final OwnerDetail = TextEditingController();
  var formkey = GlobalKey<FormState>();
  // @override
  // void initState() {
  //   DOB.text = ""; //set the initial value of text field
  //   super.initState();
  // }

  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    DOB.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.lightwhite2,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.darkblue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45)),
          ),
          centerTitle: true,
          title: Text(
            "Profile",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      //color: Colors.green,
                      //color: AppColor.lightwhite2,
                      ),
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/icons/back_logo_topbar.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 43),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Container(
                        decoration: BoxDecoration(),
                        width: 184,
                        height: 124,
                        child: Image.asset(
                          "assets/icons/splash_logo_bg.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                    child: Text(
                      "Name",
                      style: TextStyle(color: AppColor.darkblue),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18,),
                    child: TextFormField(
                      style: TextStyle(fontSize: 13.5),
                      controller: Name,
                      keyboardType: TextInputType.name,
                     validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Name";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: SizedBox(
                                width: 5,
                                height: 5,
                                child: Image.asset("assets/icons/user.png")),
                          ),
                          hintText: "Name",
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                    child: Text(
                      "Email",
                      style: TextStyle(color: AppColor.darkblue),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: TextFormField(
                      style: TextStyle(fontSize: 13.5),
                      controller: Mail,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Email";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: SizedBox(
                                width: 5,
                                height: 5,
                                child: Image.asset("assets/icons/email.png")),
                          ),
                          hintText: "KK@mailinator.com",
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                    child: Text(
                      "Mobile Number",
                      style: TextStyle(color: AppColor.darkblue),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: TextFormField(
                      style: TextStyle(fontSize: 13.5),
                      controller: Phone,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Mobile Number";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: SizedBox(
                                width: 5,
                                height: 5,
                                child: Image.asset("assets/icons/call.png")),
                          ),
                          hintText: "9315684587",
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                    child: Text(
                      "Address",
                      style: TextStyle(color: AppColor.darkblue),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: TextFormField(
                      style: TextStyle(fontSize: 13.5),
                      controller: Address,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Address";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: SizedBox(
                                width: 5,
                                height: 5,
                                child:
                                    Image.asset("assets/icons/location.png")),
                          ),
                          hintText: "",
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                    child: Text(
                      "Date of birth",
                      style: TextStyle(color: AppColor.darkblue),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: TextField(
                      style: TextStyle(fontSize: 13.5),
                      onTap: () async {
                        var date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100));
                        if (date != null) {
                          DOB.text = DateFormat('dd/mm/yyyy').format(date);
                        }
                      },
                      readOnly: true,
                      controller: DOB,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: SizedBox(
                                width: 5,
                                height: 5,
                                child: Image.asset("assets/icons/dob.png")),
                          ),
                          hintText: "",
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                    child: Text(
                      "Blood Group",
                      style: TextStyle(color: AppColor.darkblue),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: TextFormField(
                      style: TextStyle(fontSize: 13.5),
                      controller: BloodGroup,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Owner Detail";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: SizedBox(
                                width: 5,
                                height: 5,
                                child: Image.asset("assets/icons/blood_g.png")),
                          ),
                          hintText: "",
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                    child: Text(
                      "Member Id",
                      style: TextStyle(color: AppColor.darkblue),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: TextFormField(
                      style: TextStyle(fontSize: 13.5),
                      controller: MemberID,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Member Id";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: SizedBox(
                                width: 5,
                                height: 5,
                                child:
                                    Image.asset("assets/icons/memberfill.png")),
                          ),
                          hintText: "dZdTvUdYrV",
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                    child: Text(
                      "Adhar Card Number",
                      style: TextStyle(color: AppColor.darkblue),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: TextFormField(
                      style: TextStyle(fontSize: 13.5),
                      controller: AdharCardNumber,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Adhar Card Number";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: SizedBox(
                                width: 5,
                                height: 5,
                                child: Image.asset(
                                  "assets/icons/id-card.png",
                                  color: AppColor.Orange,
                                )),
                          ),
                          hintText: "2803 6587 4581",
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                    child: Text(
                      "Adhar Card Document",
                      style: TextStyle(color: AppColor.darkblue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 49,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 49,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          if (formkey.currentState!.validate()) {
                            print("validate");
                          } else {
                            print("invalid");
                          }
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.darkblue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
