import 'package:flutter/material.dart';
import 'package:resturant/Login_page/Login_page.dart';
import 'package:resturant/main_page/main_pages.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(31),
          child: Column(
            children: [
              SizedBox(height:31,),
              Text(
                "Sign Up",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),
                // style: Helper.getTheme(context).headline6,
              ),
              SizedBox(height:71,),

              Text(
                "Add your details to sign up",
              ),
              SizedBox(height: 12,),
              TextField(

                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.mail),
                  filled: true, //<-- SEE HERE

                  fillColor: Colors.grey, //<
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                ),
              ),
              SizedBox(height: 12,),
              TextField(

                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.mail),
                  filled: true, //<-- SEE HERE

                  fillColor: Colors.grey, //<
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 12,),


              TextField(

                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.mail),
                  filled: true, //<-- SEE HERE

                  fillColor: Colors.grey, //<
                  border: OutlineInputBorder(),
                  hintText: 'Mobile No',
                ),
              ),
              SizedBox(height: 12,),

              TextField(

                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.mail),
                  filled: true, //<-- SEE HERE

                  fillColor: Colors.grey, //<
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 12,),

              TextField(

                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.mail),
                  filled: true, //<-- SEE HERE

                  fillColor: Colors.grey, //<
                  border: OutlineInputBorder(),
                  hintText: 'Confirm Password',
                ),
              ),
              SizedBox(height: 12,),

              SizedBox(height:21,),

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
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontFamily: ('Rubik Medium'),
                      ),
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return Login_Page();
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account?"),
                    Text(
                      "Login",
                      style: TextStyle(
                        // color: AppColor.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),);
  }
}
