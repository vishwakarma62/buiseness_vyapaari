
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddBusiness extends StatefulWidget {
  const AddBusiness({super.key});

  @override
  State<AddBusiness> createState() => _AddBusinessState();
}

class _AddBusinessState extends State<AddBusiness> {
  var isStep1 = true;
  var isStep2 = false;
  final BusinessName = TextEditingController();
  final CompanyName = TextEditingController();
  final BusinessMail = TextEditingController();
  final ContactNumber = TextEditingController();
  final whattsappNumber = TextEditingController();
  final Phone = TextEditingController();
  final BusinessAddress = TextEditingController();
  final BusinessArea = TextEditingController();
  final BusinessPinCode = TextEditingController();
  final BusinessDetail = TextEditingController();
  final BusinessTYpe = TextEditingController();
  final latitude = TextEditingController();
  final longitude = TextEditingController();
  final BusinessStartDate = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var formkey1 = GlobalKey<FormState>();
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  var selectedBusinessType = "Item 1";

  ShowToast() {
    var name = BusinessName.text;
    var Company = CompanyName.text;
    var Mail = BusinessMail.text;
    var phone = ContactNumber.text;
    var Whatsapp = whattsappNumber.text;
    if (name!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Business Name",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (Company!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Company Name",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (Mail!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Business mail",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (phone!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Contact Number",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (Whatsapp!.isEmpty) {
      Fluttertoast.showToast(
          msg: "Enter Whatsapp Number",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      isStep1 = false;
      isStep2 = true;
    }
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
            "Add New Business",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: 340,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    decoration: BoxDecoration(
                      color: AppColor.darkblue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 170),
                      child: Container(
                        width: 138,
                        height: 138,
                        decoration: BoxDecoration(
                          color: AppColor.lightwhite2,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(19),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/icons/profile.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: Row(
                children: [
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        isStep1 = true;
                        isStep2 = false;
                      });
                    },
                    child: Container(
                      width: 40,
                      height: 40,
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
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      ShowToast();
                      setState(() {});
                    },
                    child: Container(
                      width: 40,
                      height: 40,
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
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            if (isStep1 == true)
              Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                      child: Text(
                        "Business Name",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: TextFormField(
                        style: TextStyle(fontSize: 13.5),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Business Name";
                          } else {
                            return null;
                          }
                        },
                        controller: BusinessName,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: Image.asset(
                                      "assets/icons/my_business.png")),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter Business Name",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 8),
                      child: Text(
                        "Note: Max length 30 Characters",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                      child: Text(
                        "Company name",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: TextFormField(
                        style: TextStyle(fontSize: 13.5),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Company Name";
                          } else {
                            return null;
                          }
                        },
                        controller: CompanyName,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: Image.asset(
                                      "assets/icons/my_business.png")),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter Company Name",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 8),
                      child: Text(
                        "Note: Max length 30 Characters",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                      child: Text(
                        "Business Mail",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: TextFormField(
                        style: TextStyle(fontSize: 13.5),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Business Mail";
                          } else {
                            return null;
                          }
                        },
                        controller: BusinessMail,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter Business Mail",
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: Image.asset("assets/icons/email.png")),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                      child: Text(
                        "Contact Number",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: TextFormField(
                        style: TextStyle(fontSize: 13.5),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Contact Number";
                          } else {
                            return null;
                          }
                        },
                        controller: ContactNumber,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: Image.asset("assets/icons/call.png")),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter Contact Number",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                      child: Text(
                        "Whatsapp Number",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: TextFormField(
                        style: TextStyle(fontSize: 13.5),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Whatsapp Number";
                          } else {
                            return null;
                          }
                        },
                        controller: whattsappNumber,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: Image.asset("assets/icons/call.png")),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter Whatsapp",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 49,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: ElevatedButton(
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            ShowToast();
                          },
                          child: Text(
                            "Next",
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
                      height: 50,
                    ),
                  ],
                ),
              ),
            if (isStep2 == true)
              Form(
                key: formkey1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                      child: Text(
                        "Business Address",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: TextFormField(
                        style: TextStyle(fontSize: 13.5),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Business Address";
                          } else {
                            return null;
                          }
                        },
                        controller: BusinessAddress,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: SizedBox(
                                  width: 5,
                                  height: 5,
                                  child:
                                      Image.asset("assets/icons/location.png")),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter Business Address",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                      child: Text(
                        "Business Area",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: TextFormField(
                        style: TextStyle(fontSize: 13.5),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Company Name";
                          } else {
                            return null;
                          }
                        },
                        controller: BusinessArea,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: SizedBox(
                                  width: 5,
                                  height: 5,
                                  child:
                                      Image.asset("assets/icons/location.png")),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter Business Area",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                      child: Text(
                        "Business PINcode",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: TextFormField(
                        style: TextStyle(fontSize: 13.5),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Business PINcode";
                          } else {
                            return null;
                          }
                        },
                        controller: BusinessPinCode,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter Business Pincode",
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: SizedBox(
                                  width: 5,
                                  height: 5,
                                  child:
                                      Image.asset("assets/icons/zip_code.png")),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                      child: Text(
                        "Business Details",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: TextFormField(
                        style: TextStyle(fontSize: 13.5),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Business Details";
                          } else {
                            return null;
                          }
                        },
                        controller: BusinessDetail,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: SizedBox(
                                  width: 5,
                                  height: 5,
                                  child: Image.asset(
                                    "assets/icons/business-and-trade.png",
                                    color: AppColor.Orange,
                                  )),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter Business Details",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                      child: Text(
                        "Business Type",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      width: MediaQuery.of(context).size.width,
                      child: DropdownButtonFormField(
                        value: selectedBusinessType,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Select Business Type",
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        items: items.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (newvalue) {
                          setState(() {
                            selectedBusinessType = newvalue!;
                          });
                        },
                        // Customize the dropdown's menu constraints
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, bottom: 8),
                      child: Text(
                        "Choose Business Location",
                        style: TextStyle(color: AppColor.darkblue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 6),
                                child: Text(
                                  "Latitude",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                child: TextFormField(
                                  style: TextStyle(fontSize: 13.5),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "latitude";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: latitude,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: "0.0",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 6),
                                child: Text(
                                  "Longitude",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                child: TextFormField(
                                  style: TextStyle(fontSize: 13.5),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "longitude";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: longitude,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: "0.0",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 49,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(child: Text("Choose From Map")),
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
                            "Next",
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
                      height: 100,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
