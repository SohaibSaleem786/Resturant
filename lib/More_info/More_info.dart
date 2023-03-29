import 'package:flutter/material.dart';
import 'package:resturant/Login_page/Sign_up/forgetPwScreen.dart';
import 'package:resturant/Login_page/Sign_up/signUpScreen.dart';

class More_info extends StatefulWidget {
  const More_info({Key? key}) : super(key: key);

  @override
  State<More_info> createState() => _More_infoState();
}

class _More_infoState extends State<More_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/1carousel.jpg"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image(
                          height: 41,
                          width: 41,
                          image: AssetImage('assets/images/backward.png')),
                    ),
                    Text('Sign up',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: Image(
                        height: 211,
                        width: 211,
                        // color: Colors.tealAccent,
                          image: AssetImage('assets/images/logo2.png')
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),

                    Text('Sign up' ,style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 13,
                    ),
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
                      height: 21,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE

                        fillColor: Colors.grey, //<
                        prefixIcon:Icon(Icons.password),

                        border: OutlineInputBorder(),
                        hintText: 'Enter password',
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                          return ForgetPwScreen();
                        }));
                      },
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('Forgot Password?',style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: 280,
                      color: Colors.deepOrange,
                      child:  Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontFamily: ('Rubik Medium'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(width: 89,),

                        Text('Dont have an account? '),
                        InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context){
                          return SignUpScreen();
                        }));
                          },child: Text('Sign up',style: TextStyle(color: Colors.deepOrange),)),

                      ],
                    ),
                    SizedBox(height: 12,),

                    Text('You can also login using',style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 8,),

                    Container(
                      height: 50,
                      width: 280,
                      color: Colors.blue,
                      child:  Center(
                        child: Text(
                          'Login with Facebook',
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontFamily: ('Rubik Medium'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),

                    Container(
                      height: 50,
                      width: 280,
                      color: Colors.deepOrange,
                      child:  Center(
                        child: Text(
                          'Login with Google',
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontFamily: ('Rubik Medium'),
                          ),
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        )
      )
    );
  }
}
