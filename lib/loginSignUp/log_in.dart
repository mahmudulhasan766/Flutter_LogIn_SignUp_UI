import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup/loginSignUp/sign_up.dart';
import 'package:flutter_login_signup/route/route.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/my_text_field.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  int selectedRadio;

  @override
  void initState() {
    selectedRadio = 0;
    super.initState();
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //
      //   title:
      // ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: ListView(
          children: [
            //SizedBox(height: MediaQuery.of(context).size.width/17),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back),
                SizedBox(width: MediaQuery.of(context).size.width / 5),
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

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width / 7,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 3),
                  child: Row(
                    children: [
                      Text("Log",
                          style: GoogleFonts.exo(
                              textStyle: TextStyle(
                                  color: Colors.black, fontSize: 40))),
                      Text("In",
                          style: GoogleFonts.exo(
                              textStyle:
                                  TextStyle(color: Colors.red, fontSize: 40))),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 9,
                ),
                Column(
                  children: [
                    MyTExtField(
                      hintText: "Email",
                      iconData: Icons.email,
                      obscureText: false,
                      //controller: "",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyTExtField(
                      //controller: _password,
                      hintText: "Password",
                      iconData: Icons.lock,
                      obscureText: true,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: Colors.black,
                          onChanged: (val) {
                            print("Radio$val");
                            setSelectedRadio(val);
                          },
                        ),
                        Text("You are Rasturant ownr?"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: Colors.black,
                          onChanged: (val) {
                            print("Radio$val");
                            setSelectedRadio(val);
                          },
                        ),
                        Text("You are genaral User?"),
                      ],
                    )
                  ],
                ),
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
                      //validetion();
                    },
                    child: Text("Log in",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "New user?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            SIGN_UP, (Route<dynamic> route) => false);
                      },
                      child: Text(
                        "Register now",
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    )
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
