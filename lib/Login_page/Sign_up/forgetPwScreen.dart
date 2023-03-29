import 'package:flutter/material.dart';

import './sentOTPScreen.dart';

class ForgetPwScreen extends StatelessWidget {
  static const routeName = "/restpwScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: Helper.getScreenWidth(context),
        // height: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Reset Password",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),
                ),
                SizedBox(
                  height: 34,
                ),
                Text(
                  "Please enter your email to recieve a link to create a new password via email",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 41,
                ),
                // Spacer(flex: 2),
                TextField(

                  decoration: InputDecoration(
                    prefixIcon:Icon(Icons.mail),
                    filled: true, //<-- SEE HERE

                    fillColor: Colors.grey, //<
                    border: OutlineInputBorder(),
                    hintText: 'Enter user Email',
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context){
                      return SendOTPScreen();
                    }));
                  },
                  child: Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(

                      color: Colors.deepOrange,
                    ),
                    child:  Center(
                      child: Text(
                        'Send',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                          fontFamily: ('Rubik Medium'),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
