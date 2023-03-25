//
// import 'package:etihad/Login_page/Login_page.dart';
// import 'package:etihad/Model/response_model.dart';
// import 'package:etihad/Own_Funtion.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
//
//
// class Shared_Prefs {
//
//   static savedata(String loged) async{
//     SharedPreferences sp = await SharedPreferences.getInstance();
//
//     sp.setString('name', loged.name!.toString() );
//     sp.setString('password', user.tusrpwd.toString() );
//     sp.setString('loged', loged );
//
//
//   }
//   //  SHARED PREFERENCES FOR LOGOUT
//   static Logout(BuildContext context)async{
//         Own.flexToast(context, 'logout successfully');
//
//         SharedPreferences prefs = await SharedPreferences.getInstance();
//         prefs.clear();
//         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context){
//           return Login_Page();
//         }));
//   }
//
//
// }
//
