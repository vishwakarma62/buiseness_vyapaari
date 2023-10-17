
//import 'package:exam_app/ui/sign_up_page-2.dart';
//import 'package:exam_app/widget/custom_input_widget.dart';
import 'package:buiseness_vyapaari/model/formdata.dart';
import 'package:buiseness_vyapaari/ui/login_page.dart';
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var nameCtr = TextEditingController();
  var EmailCtr = TextEditingController();
  var phoneCtr = TextEditingController();
  var AddressCtr = TextEditingController();
  var ZipcodeCtr = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var formkey1 = GlobalKey<FormState>();
  var formkey2 = GlobalKey<FormState>();
  var PasswordCtr = TextEditingController();
  var ConfirmPasswordCtr = TextEditingController();
  var AdharCardCtr = TextEditingController();
  var BloodGroupCtr = TextEditingController();

  var isStep1 = true;
  var isStep2 = false;
  var isStep3 = false;
  bool _obscureText = true;

  toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void setdata() async {
    final box = await Hive.openBox("signupbox");
    final obj = FormData(
      email: EmailCtr.text,
      password: PasswordCtr.text,
      name: nameCtr.text,
      location: AddressCtr.text,
      zip: ZipcodeCtr.text,
    );
    box.put("signup", obj);
    Navigator.popUntil(context, (route) => route.isFirst);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LoginPage();
        },
      ),
    );
  }

  Showtoast() {
    var email = EmailCtr.text;
    var Phone = phoneCtr.text;
    var address = AddressCtr.text;
    var zipcode = ZipcodeCtr.text;
    var Name = nameCtr.text;
    if (Name!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Name",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (email!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Email Addresss",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (Phone!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Phone Number",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (address!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Addresss",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (zipcode!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter ZIPcode",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      isStep1 = false;
      isStep2 = true;
      isStep3 = false;
    }
  }

  ShowtoastforStep3() {
    var email = EmailCtr.text;
    var Phone = phoneCtr.text;
    var address = AddressCtr.text;
    var zipcode = ZipcodeCtr.text;
    var Name = nameCtr.text;
    if (Name!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Name",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (email!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Email Addresss",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (Phone!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Phone Number",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (address!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Addresss",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (zipcode!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter ZIPcode",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      isStep1 = false;
      isStep2 = false;
      isStep3 = true;
    }
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
              "Business Owner Registration",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            automaticallyImplyLeading: false,
            leading: InkWell(
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
        backgroundColor: AppColor.lightwhite2,
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
                          width: 182,
                          height: 122,
                          child: Image.asset(
                            "assets/icons/splash_logo_bg.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 112.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isStep1 = true;
                          isStep2 = false;
                          isStep3 = false;
                        });
                      },
                      child: Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isStep1 ? AppColor.darkblue : AppColor.Gray,
                        ),
                        child: Center(
                            child: Text(
                          "1",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: isStep1 ? Colors.white : Colors.black),
                        )),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
                    GestureDetector(
                      onTap: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                        Showtoast();
                        setState(() {});
                      },
                      child: Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isStep2 ? AppColor.darkblue : AppColor.Gray,
                        ),
                        child: Center(
                            child: Text(
                          "2",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: isStep2 ? Colors.white : Colors.black),
                        )),
                      ),
                    ),
                    Expanded(child: Divider()),
                    GestureDetector(
                      onTap: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                        ShowtoastforStep3();
                        setState(() {});
                      },
                      child: Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isStep3 ? AppColor.darkblue : AppColor.Gray,
                        ),
                        child: Center(
                            child: Text(
                          "3",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: isStep3 ? Colors.white : Colors.black),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                  key: formkey,
                  child: Column(
                    children: [
                      if (isStep1 == true)
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18),
                              child: TextFormField(
                                style: TextStyle(fontSize: 13.5),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[^0-9]')),
                                  FilteringTextInputFormatter.deny(RegExp(
                                      r'\s')), // Deny whitespace (spaces)
                                ],
                                controller: nameCtr,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(12),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(13.5),
                                      child: SizedBox(
                                          width: 4,
                                          height: 4,
                                          child: Image.asset(
                                              "assets/icons/user.png")),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "Name",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18),
                              child: TextFormField(
                                style: TextStyle(fontSize: 13.5),
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(RegExp(
                                      r'\s')), // Deny whitespace (spaces)
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
                                controller: EmailCtr,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(12),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(13.5),
                                      child: SizedBox(
                                          width: 5,
                                          height: 5,
                                          child: Image.asset(
                                              "assets/icons/email.png")),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "Email",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18),
                              child: TextFormField(
                                style: TextStyle(fontSize: 13.5),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(10),
                                  FilteringTextInputFormatter.deny(RegExp(
                                      r'\s')), // Deny whitespace (spaces)
                                ],
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter Phone";
                                  } else {
                                    return null;
                                  }
                                },
                                controller: phoneCtr,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(12),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "Phone",
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(13.5),
                                      child: SizedBox(
                                          width: 5,
                                          height: 5,
                                          child: Image.asset(
                                              "assets/icons/call.png")),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18),
                              child: TextFormField(
                                style: TextStyle(fontSize: 13.5),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter Address";
                                  } else {
                                    return null;
                                  }
                                },
                                controller: AddressCtr,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(12),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(13.5),
                                      child: SizedBox(
                                          width: 5,
                                          height: 5,
                                          child: Image.asset(
                                              "assets/icons/location.png")),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "Address",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18),
                              child: TextFormField(
                                style: TextStyle(fontSize: 13.5),
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(RegExp(
                                      r'\s')), // Deny whitespace (spaces)
                                ],
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter PINCode";
                                  } else {
                                    return null;
                                  }
                                },
                                controller: ZipcodeCtr,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(12),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(13.5),
                                      child: SizedBox(
                                          width: 5,
                                          height: 5,
                                          child: Image.asset(
                                              "assets/icons/zip_code.png")),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "PinCode",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(50),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 46,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 18.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    var email = EmailCtr.text;
                                    var Phone = phoneCtr.text;
                                    var address = AddressCtr.text;
                                    var zipcode = ZipcodeCtr.text;
                                    var Name = nameCtr.text;
                                    if (Name!.isEmpty) {
                                      Fluttertoast.showToast(
                                          msg: "Enter Name",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    } else if (email!.isEmpty) {
                                      Fluttertoast.showToast(
                                          msg: "Enter Email Addresss",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    } else if (Phone!.isEmpty) {
                                      Fluttertoast.showToast(
                                          msg: "Enter Phone Number",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    } else if (address!.isEmpty) {
                                      Fluttertoast.showToast(
                                          msg: "Enter Addresss",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    } else if (zipcode!.isEmpty) {
                                      Fluttertoast.showToast(
                                          msg: "Enter ZIPcode",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    } else if (!RegExp(
                                            r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                                        .hasMatch(email)) {
                                      Fluttertoast.showToast(
                                          msg: "Enter a valid email address",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    } else {
                                      FocusScopeNode currentFocus =
                                          FocusScope.of(context);
                                      if (!currentFocus.hasPrimaryFocus) {
                                        currentFocus.unfocus();
                                      }
                                      setState(() {
                                        isStep1 = false;
                                        isStep2 = true;
                                        isStep3 = false;
                                      });
                                    }
                                  },
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                        color: AppColor.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColor.darkblue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      // SizedBox(height: 20,),

                      if (isStep2 == true)
                        Form(
                          key: formkey2,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                child: TextFormField(
                                  style: TextStyle(fontSize: 13.5),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Adhaar Card Number";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: AdharCardCtr,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(12),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(13.5),
                                        child: SizedBox(
                                            width: 5,
                                            height: 5,
                                            child: Image.asset(
                                                "assets/icons/zip_code.png")),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: "Adhaar Card number",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                child: TextFormField(
                                  style: TextStyle(fontSize: 13.5),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter password";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: PasswordCtr,
                                  obscureText: _obscureText,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(12),
                                      filled: true,
                                      fillColor: Colors.white,
                                      prefixIcon: SizedBox(
                                          width: 5,
                                          height: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(13.5),
                                            child: Image.asset(
                                                "assets/icons/lock.png"),
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
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Image.asset(
                                                        "assets/icons/eye_on.png"),
                                                  )
                                                : Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Image.asset(
                                                        "assets/icons/eye_off.png"),
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
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                child: TextFormField(
                                  style: TextStyle(fontSize: 13.5),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Confirm password";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: ConfirmPasswordCtr,
                                  obscureText: _obscureText,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(12),
                                      filled: true,
                                      fillColor: Colors.white,
                                      prefixIcon: SizedBox(
                                          width: 5,
                                          height: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(13.5),
                                            child: Image.asset(
                                                "assets/icons/lock.png"),
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
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Image.asset(
                                                        "assets/icons/eye_on.png"),
                                                  )
                                                : Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Image.asset(
                                                        "assets/icons/eye_off.png"),
                                                  ),
                                          ),
                                        ),
                                      ),
                                      hintText: "Confirm Password",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 46,
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 18.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        isStep1 = false;
                                        isStep2 = false;
                                        isStep3 = true;
                                      });
                                      // FocusScope.of(context).unfocus();
                                      if (formkey.currentState!.validate()) {
                                        print("validate");
                                      } else {
                                        print("invalid");
                                      }
                                    },
                                    child: Text(
                                      "Next",
                                      style: TextStyle(
                                          color: AppColor.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
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
                      SizedBox(
                        height: 20,
                      ),

                      if (isStep3 == true)
                        Form(
                          key: formkey1,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                child: TextFormField(
                                  style: TextStyle(fontSize: 13.5),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Your Blood group";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: BloodGroupCtr,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding: EdgeInsets.all(12),
                                      prefixIcon: SizedBox(
                                          width: 5,
                                          height: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(13.5),
                                            child: Image.asset(
                                                "assets/icons/blood_g.png"),
                                          )),
                                      hintText: "A+",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 46,
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 18.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // FocusScope.of(context).unfocus();
                                      if (formkey.currentState!.validate()) {
                                        setdata();
                                      } else {
                                        print("invalid");
                                      }
                                    },
                                    child: Text(
                                      "Register",
                                      style: TextStyle(
                                          color: AppColor.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
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
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
