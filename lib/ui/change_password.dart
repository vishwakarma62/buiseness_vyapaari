
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final email = TextEditingController();
  final password = TextEditingController();
  final Phone = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _obscureText2 = true;
  bool _obscureText1 = true;
  bool isEmail = true;
  bool isPhone = false;
  bool ischeked = false;
  toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  toggleObscureText1() {
    setState(() {
      _obscureText1 = !_obscureText1;
    });
  }

  toggleObscureText2() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.lightwhite2,
      appBar: AppBar(
           backgroundColor: AppColor.darkblue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45)),
            ),
            centerTitle: true,
            title: Text(
              "Change password",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            automaticallyImplyLeading: false,
            leading: InkWell(splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory,
              onTap: () {
                Navigator.pop(context);
              },
              child: Transform.scale(
                  scale: 0.7,
                  child: Image.asset(
                    "assets/icons/ic_back.png",
                    fit: BoxFit.fitHeight,
                    color: Colors.white,
                  )),
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
                      //color: AppColor.lightwhite2,
                      ),
                  child: Image.asset(
                    "assets/icons/back_logo_topbar.png",
                    fit: BoxFit.cover,
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
            SizedBox(
              height: 35,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Password";
                  } else {
                    return null;
                  }
                },
                controller: email,
                keyboardType: TextInputType.emailAddress,
                obscureText: _obscureText1,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: SizedBox(
                          width: 5,
                          height: 5,
                          child: Image.asset("assets/icons/lock.png")),
                    ),
                    suffixIcon: SizedBox(
                      width: 5,
                      height: 5,
                      child: InkWell(
                        onTap: () {
                          toggleObscureText1();
                        },
                        child: Transform.scale(
                          scale: 0.7,
                          child: _obscureText1
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      Image.asset("assets/icons/eye_off.png"),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/icons/eye_on.png"),
                                ),
                        ),
                      ),
                    ),
                    hintText: "Old Password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    )),
              ),
            ),
            // SizedBox(height: 20,),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter password";
                  } else {
                    return null;
                  }
                },
                controller: password,
                obscureText: _obscureText,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: SizedBox(
                        width: 5,
                        height: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Image.asset("assets/icons/lock.png"),
                        )),
                    suffixIcon: SizedBox(
                      width: 5,
                      height: 5,
                      child: InkWell(
                        onTap: () {
                          toggleObscureText();
                        },
                        child: Transform.scale(
                          scale: 0.7,
                          child: _obscureText
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      Image.asset("assets/icons/eye_off.png"),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/icons/eye_on.png"),
                                ),
                        ),
                      ),
                    ),
                    hintText: "New Password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 30, right: 18),
              child: Text(
                  "Password must contain at least 8 characters, one uppercase, one lowercase,one digit, and one special character"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter password";
                  } else {
                    return null;
                  }
                },
                controller: password,
                obscureText: _obscureText2,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: SizedBox(
                        width: 5,
                        height: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Image.asset("assets/icons/lock.png"),
                        )),
                    suffixIcon: SizedBox(
                      width: 5,
                      height: 5,
                      child: InkWell(
                        onTap: () {
                          toggleObscureText2();
                        },
                        child: Transform.scale(
                          scale: 0.7,
                          child: _obscureText2
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      Image.asset("assets/icons/eye_off.png"),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/icons/eye_on.png"),
                                ),
                        ),
                      ),
                    ),
                    hintText: "New Password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    )),
              ),
            ),
            SizedBox(
              height: 25,
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
                    "Update",
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
          ],
        ),
      ),
    );
  }
}
