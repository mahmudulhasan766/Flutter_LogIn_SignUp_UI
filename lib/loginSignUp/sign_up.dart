import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_login_signup/loginSignUp/log_in.dart';
import 'package:flutter_login_signup/route/route.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'Widget/my_text_field.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List<String> _list = [
    'Restaurant Owner',
    'Genaral user',
  ];

  String _value;

  File imagefile;
  void _chooseimage() async {
    imagefile = await ImagePicker.pickImage(source: ImageSource.camera);
    imagefile = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: ListView(
          children: [
            //SizedBox(height: MediaQuery.of(context).size.width/30),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    Text("Food",
                        style: GoogleFonts.exo(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w500))),
                    Text(
                      "Offer",
                      style: GoogleFonts.exo(
                          textStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 28,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.width / 24,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Text("Sign",
                          style: GoogleFonts.exo(
                              textStyle: TextStyle(
                                  color: Colors.black, fontSize: 40))),
                      Text("Up",
                          style: GoogleFonts.exo(
                              textStyle:
                                  TextStyle(color: Colors.red, fontSize: 40))),
                    ],
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.width / 20,
                ),

                Column(
                  children: [
                    DropdownButton<String>(
                      hint: Text("Plz enter your vandor !"),
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                          print(_value);
                        });
                      },
                      items: _list.map((e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      }).toList(),
                    ),
                    MyTExtField(
                      //controller: firstName,
                      obscureText: false,
                      hintText: _value == 'Restaurant Owner'
                          ? 'Restaurant name'
                          : 'Fast name',
                      iconData: Icons.account_circle_outlined,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 30,
                    ),
                    MyTExtField(
                      //controller: lasatName,
                      obscureText: false,
                      hintText: _value == 'Genaral user'
                          ? 'Second name'
                          : 'Rastaurant owner',
                      iconData: Icons.account_circle_outlined,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 30,
                    ),
                    MyTExtField(
                      //controller: email,
                      obscureText: false,
                      hintText: 'Phone',
                      iconData: Icons.phone_android,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 30,
                    ),
                    MyTExtField(
                      //controller: email,
                      obscureText: false,
                      hintText: 'Email',
                      iconData: Icons.email,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 30,
                    ),
                    MyTExtField(
                      //controller: password,
                      obscureText: true,
                      hintText: 'Password',
                      iconData: Icons.lock,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Pick your image"),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width / 3,
                          width: MediaQuery.of(context).size.width / 2.2,
                          alignment: Alignment.center,
                          child: RaisedButton(
                            onPressed: _chooseimage,
                            child: Row(
                              children: [
                                Icon(Icons.image),
                                Text('Choose Image'),
                              ],
                            ),
                          ),
                          // Row(
                          //   children: [
                          //     Icon(Icons.image),
                          //   ],
                          // ),
                          //SizedBox(width: 10,),
                          decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    )
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.width / 35,
                ),
                //SizedBox(height: 30,),
                Container(
                  height: MediaQuery.of(context).size.height * .07,
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: RaisedButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {
                      // Notification();
                      //validation();
                    },
                    child: Text("Sign Up",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ))),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "New user?",
                      style: TextStyle(color: Colors.grey, fontSize: 22),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(LOG_IN, (Route<dynamic> route) => false);
                      },
                      child: Text(
                        "log in",
                        style: TextStyle(color: Colors.red, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
