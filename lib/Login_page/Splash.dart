import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resturant/Screen/product.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login_page.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

        // // HERE IS INIT STATE
   @override
  void initState(){

    Timer(Duration(seconds:2),(){
      getUserData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
                width: 400,
                height: 400,
                image: AssetImage('assets/images/logo.png')),
            // Center(
            //   child: Text(
            //     'Sohaib Resturant',
            //     style: TextStyle(
            //         fontSize: 35, color: Colors.orange[100], fontWeight: FontWeight.bold),
            //   ),
            // ),
      ],
        ),
      ),
    );
  }


   getUserData() {

       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
         return Login_Page();
       }));
     }
   }



