
import 'package:flutter/material.dart';


import 'package:provider/provider.dart';
import 'package:resturant/CartProvider.dart';
import 'package:resturant/Login_page/Splash.dart';
import 'package:resturant/Screen/product.dart';
import 'package:resturant/main_page/main_pages.dart';
import 'package:resturant/theme/model_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => CartProvider()),
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ],

    child: Builder(builder: (BuildContext context){


      final  themeProvider = Provider.of<ThemeProvider>(context);


        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: Mythemes.lightTheme,
          darkTheme: Mythemes.darkTheme,
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
          home:  splash(),
        );
      }),

    );
  }
}