import 'package:flutter/material.dart';
import 'package:walid_shop/widget/bottom_nav_bar.dart';

import '../page/home_page.dart';

class LoginWait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/loginwait.png",
                height: 250,
                width: 250,
              ),
              SizedBox(
                height: 90,
              ),
              Text(
                "Your Login Is Successful",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              SizedBox(
                height: 120,
              ),
              SizedBox(
                width: 190,
                height: 60,
                child: OutlineButton(
                  borderSide: BorderSide(color: Colors.black, width: 3.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Continue",
                        style: TextStyle(fontSize: 25),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
