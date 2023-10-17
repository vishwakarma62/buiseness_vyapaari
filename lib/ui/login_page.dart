
//import 'package:exam_app/ui/sign_up_page-2.dart';

import 'package:buiseness_vyapaari/ui/bottom_navigation_bar.dart';
import 'package:buiseness_vyapaari/ui/forgot_password.dart';
import 'package:buiseness_vyapaari/ui/sign_up_page.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    getdata();
    super.initState();
  }

  String? getemail;
  String? getpassword;
  String? enteremail;
  String? enterpassword;
  void getdata() async {
    final box = await Hive.openBox("signupbox");
    final getcredential = box.get('signup');
    setState(() {
      getemail = getcredential.email;
      getpassword = getcredential.password;
    });
  }

  final emailCtr = TextEditingController();
  final passwordCtr = TextEditingController();
  final PhoneCtr = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool isEmail = true;
  bool isPhone = false;
  bool ischeked = false;
  toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: AppColor.lightwhite2,
        // resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
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
              "Login",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
        // backgroundColor: AppColor.lightwhite2,
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/opacity.png",
                fit: BoxFit.cover,
              ),
            ),
            Form(
              key: formkey,
              child: SingleChildScrollView(
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
                      height: 25,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: TextFormField(
                        style: TextStyle(fontSize: 12.5),
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(
                              RegExp(r'\s')), // Deny whitespace (spaces)
                        ],
                        validator: (value) {
                          // Check if this field is empty
                          if (value == null || value.isEmpty) {
                            return 'Enter email';
                          }

                          // using regular expression
                          if (!RegExp(
                                  r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                              .hasMatch(value)) {
                            return "Please enter a valid email address";
                          }

                          // the email is valid
                          return null;
                        },
                        controller: emailCtr,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.5),
                              child: SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: Image.asset("assets/icons/email.png")),
                            ),
                            hintText: "Enter Email",
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
                        style: TextStyle(fontSize: 12.5),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter password";
                          } else {
                            return null;
                          }
                        },
                        controller: passwordCtr,
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
                                  padding: const EdgeInsets.all(14),
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
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                              "assets/icons/eye_off.png"),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                              "assets/icons/eye_on.png"),
                                        ),
                                ),
                              ),
                            ),
                            hintText: "Enter Password",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 27,
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
                              enteremail = emailCtr.text;
                              enterpassword = passwordCtr.text;
                              if (getemail == enteremail &&
                                  getpassword == enterpassword) {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return BottomNavigation(index: 0);
                                }));
                              } else {
                                Fluttertoast.showToast(
                                    msg: "invalid credentials",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              }

                              print("validate");
                            } else {
                              print("invalid");
                            }
                          },
                          child: Text(
                            "Login",
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
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ForgotPassword();
                        }));
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    //Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignUpPage();
                            }));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: AppColor.darkblue),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
