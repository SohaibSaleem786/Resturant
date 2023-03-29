import 'package:flutter/material.dart';
import 'package:resturant/main_page/main_pages.dart';


class NewPwScreen extends StatelessWidget {
  static const routeName = "/newPw";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: Helper.getScreenWidth(context),
        // height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("New Password"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Please enter your email to recieve a link to create a new password via email",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(

                  decoration: InputDecoration(
                    prefixIcon:Icon(Icons.mail),
                    filled: true, //<-- SEE HERE

                    fillColor: Colors.grey, //<
                    border: OutlineInputBorder(),
                    hintText: 'New Password',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(

                  decoration: InputDecoration(
                    prefixIcon:Icon(Icons.mail),
                    filled: true, //<-- SEE HERE

                    fillColor: Colors.grey, //<
                    border: OutlineInputBorder(),
                    hintText: 'Confirm Password',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                      return Main_Page();
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
                        'Next',
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
