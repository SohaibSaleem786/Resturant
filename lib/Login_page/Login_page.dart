import 'dart:convert';
import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:resturant/Login_page/Sign_up/forgetPwScreen.dart';
import 'package:resturant/Login_page/Sign_up/signUpScreen.dart';
import 'package:resturant/Login_page/response_model.dart';
import 'package:resturant/Own_Funtion.dart';
import 'package:resturant/Screen/product.dart';
import 'package:resturant/main_page/main_pages.dart';


class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {

  ResponseModel responseModel = ResponseModel();

  //
  // TextEditingController email = TextEditingController();
  // TextEditingController password = TextEditingController();


  ///..................animation.................  ///

  late TextEditingController controller_username = TextEditingController(text: '');
  late TextEditingController controller_password =
  TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SizedBox(
              height: 60,
            ),
             Image(
                width: 300,
                height: 300,
                image: AssetImage('assets/images/logo.png')
            ),
            // Text(
            //   '𝗟𝗼𝗴𝗶𝗻',
            //   style: TextStyle(
            //       fontSize: 35, color: Colors.deepOrange, fontWeight: FontWeight.bold),
            // ),


            // enter login credititional

            Padding(
              padding:  EdgeInsets.symmetric(vertical: 30),
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    children: [
                      TextField(
                        controller: controller_username,

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
                        controller: controller_password,

                        decoration: InputDecoration(
                          filled: true, //<-- SEE HERE

                          fillColor: Colors.grey, //<
                          prefixIcon:Icon(Icons.password),

                          border: OutlineInputBorder(),
                          hintText: 'Enter password',
                        ),
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
                      ), // space between two wegit

                      InkWell(
                        onTap: () {
                          loginx();
                        },
                        child: Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.deepOrange,
                            //     offset: Offset(
                            //       2.0,
                            //       2.0,
                            //     ),
                            //     blurRadius: 10.0,
                            //     spreadRadius: 2.0,
                            //   ), //BoxShadow
                            //   BoxShadow(
                            //     color: Colors.white,
                            //     offset: Offset(0.0, 0.0),
                            //     blurRadius: 0.0,
                            //     spreadRadius: 0.0,
                            //   ), //BoxShadow
                            // ],
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(11),
                          ),
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
                      ),
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



                    ],
                  ),
                ),
              ),
            ),

            // ExplicitAnimations(),


          ],
        ),
      ),
    );
  }

  loginx() async {
    var uri =
    Uri.parse('https://www.xeon.pk/myapi/login.php');
    var response = await http.post(uri, body: {
      'username': controller_username.text,
      'password': controller_password.text,
    });
    var _data = jsonDecode(response.body);
    ResponseModel responseModel = ResponseModel.fromJson(_data);

    if (responseModel.status == 200) {

      Own.flexToast(context, '${responseModel.message}');
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
            return Main_Page();
          }));
    } else {
      Own.flexToast(context, "${responseModel.message}");
    }
  }
}



///...............................animated rectangle in login page ...............///




class ExplicitAnimations extends StatefulWidget {
  const ExplicitAnimations({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimations> createState() => _ExplicitAnimationsState();
}


class _ExplicitAnimationsState extends State<ExplicitAnimations>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late final Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlurContainer(
      containerHeight: 100,
      child: AlignTransition(
        alignment: _alignAnimation,
        child: RotationTransition(
          turns: _rotationAnimation,
          child: const Rectangle(
            color1: pink,
            color2: Colors.orange,
            width: 50,
            height: 50,
          ),
        ),
      ),
    );
  }
}


class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}
class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Container(
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [purple, pink, yellow],
              stops: [0, _controller.value, 1],
            ),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white),
          ),
        );
      },
    );
  }
}

class BlurContainer extends StatelessWidget {
  const BlurContainer({
    Key? key,
    this.containerHeight = 120,
    this.child,
  }) : super(key: key);

  final double containerHeight;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          clipBehavior: Clip.none,
          height: containerHeight,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            border: Border.all(
              color: Colors.orange,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}


class Rectangle extends StatelessWidget {
  const Rectangle({
    Key? key,
    this.width = 60,
    this.height = 40,
    required this.color1,
    required this.color2,
    this.top,
    this.bottom,
    this.left,
    this.right,
  }) : super(key: key);

  final double width;
  final double height;
  final Color color1;
  final Color color2;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(width: 1, color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}




const Color pink = Colors.deepOrange;
const Color pinkDark = Color(0xffD64265);
const Color yellow = Color(0xffE7F18F);
const Color yellowDark = Color(0xffB8C72B);
const Color purple = Color(0xff323AE9);

///...............................animated rectangle in login page ...............///
