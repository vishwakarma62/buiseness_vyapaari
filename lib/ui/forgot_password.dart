
import 'package:buiseness_vyapaari/utils/app_color.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
    var EmailORphone=TextEditingController();
     var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Forgot Password",style: TextStyle(fontSize: 20,color: Colors.white),),
         automaticallyImplyLeading: false, 
            backgroundColor: AppColor.darkblue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45)),
            ),
                      leading: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Transform.scale(
                            scale: 0.7,
                            child: Image.asset(
                              "assets/icons/ic_back.png",
                              fit: BoxFit.fitHeight,color: Colors.white,
                            )),
                      )
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Image.asset("assets/images/opacity.png",fit: BoxFit.cover,),
            Column(children: [
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
                      SizedBox(height: 25,),
              Container(
                     padding: EdgeInsets.symmetric(horizontal: 18),
                     child: TextFormField(
                       validator: (value) {
                                 if (value!.isEmpty) {
                                   return "Enter Email or Phone Number";
                                 } else {
                                   return null;
                                 }
                               },
                      controller: EmailORphone,
                       keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                         contentPadding: EdgeInsets.symmetric(vertical: 1),
                         prefixIcon: Padding(
                                     padding: const EdgeInsets.all(13.0),
                                     child: SizedBox(
                                         width: 5,
                                         height: 5,
                                         child: Image.asset("assets/icons/email.png")),
                                   ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Email or Phone",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50),
                        )
                      ),
                                 ),
                                  ),
                                  SizedBox(height: 40,),
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
                            "Send OTP",
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
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Back to ",style: TextStyle(fontSize: 18),),
                        SizedBox(width: 5,),
                        GestureDetector(onTap: (){
                          Navigator.pop(context);
                        },child: Text("Login",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: AppColor.darkblue ),))
                      ],
                    ),
                    SizedBox(height: 15,),
            ],)
          ],),
        ),
      ),
    );
  }
}