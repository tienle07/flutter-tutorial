// ignore_for_file: prefer_const_constructors

import 'package:first_project_flutter/views/common/button-login-other.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 42, left: 22),
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black, width: 1)),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.pushNamed(context, "/welcome");
                  },
                  icon: Icon(
                    Icons.navigate_before,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 40, top: 80),
                width: 164,
                height: 45,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  margin:
                      const EdgeInsets.only(left: 33.0, right: 27, bottom: 18),
                  height: 52.0,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(width: 1, color: Color(0x60606078))),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle: TextStyle(color: Color(0xffAFAFAF)),
                        border: InputBorder.none),
                    controller: username,
                    obscureText: false,
                  )),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  margin:
                      const EdgeInsets.only(left: 33.0, right: 27, bottom: 18),
                  height: 52.0,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(width: 1, color: Color(0x60606078))),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Color(0xffAFAFAF)),
                            border: InputBorder.none,
                          ),
                          controller: password,
                          obscureText: true,
                        ),
                      ),
                      // IconButton(
                      //   padding: EdgeInsets.all(0),
                      //   onPressed: () {},
                      //   icon: Icon(Icons.visibility),
                      // )
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/sign");
                      },
                      child: Text(
                        "Register member",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black),
                      )),
                  SizedBox(
                    width: 33,
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 33.0, right: 27, bottom: 18, top: 47),
                padding: EdgeInsets.all(0),
                height: 52.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xff0064D2),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(width: 1, color: Color(0x60606078)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x00000040),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ]),
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 33.0, right: 32, bottom: 30, top: 30),
                padding: EdgeInsets.all(0),
                child: Row(
                  children: const [
                    Expanded(child: Divider(color: Colors.black, height: 1)),
                    Text(
                      " Or Login With ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    Expanded(child: Divider(color: Colors.black, height: 1)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 33,
                  ),
                  Expanded(
                    child: ButtonLink(
                      onPressed: () {
                        print("facebook");
                      },
                      url: "assets/icon/facebook.png",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ButtonLink(
                      onPressed: () {},
                      url: "assets/icon/google.png",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ButtonLink(
                      onPressed: () {},
                      url: "assets/icon/apple.png",
                    ),
                  ),
                  SizedBox(
                    width: 33,
                  ),
                ],
              )

              // Center(
              //   child: Container(
              //     width: 200,
              //     height: 200,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         color: Colors.red),
              //     child: FadeInImage.assetNetwork(
              //       placeholder: 'assets/gif/giphy.gif',
              //       image: 'https://picsum.photos/250?image=7',
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
