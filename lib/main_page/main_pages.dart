import 'package:flutter/material.dart';
import 'package:resturant/Screen/Offer_dishes.dart';
import 'package:resturant/Screen/cart_screen.dart';
import 'package:resturant/Screen/product.dart';

class Main_Page extends StatefulWidget {
  const Main_Page({Key? key}) : super(key: key);

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {


  /// list of bottom navigator bar

  List pages = [
    ProductListScreen(),
    CartScreen(),
    offer_dishes()
    // offer_dishes(),
  ];


  int currentIndex =0;
  void onTap(int index){
      setState(() {
    currentIndex = index;
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.deepOrange,
        selectedItemColor :Colors.black,

        onTap: onTap,
        currentIndex:currentIndex,
          // unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Menu',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Cart',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Deals',

          ),
        ],
      ),

    );
  }
}
