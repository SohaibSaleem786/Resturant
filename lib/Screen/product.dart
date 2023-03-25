import 'dart:ui';

import 'package:badges/badges.dart'as bg;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import 'package:provider/provider.dart';
import 'package:resturant/CartProvider.dart';
import 'package:resturant/Screen/Reserve_table/Reserve_table.dart';
import 'package:resturant/Screen/cart_screen.dart';
import 'package:resturant/Screen/hero.dart';
import 'package:resturant/Screen/recent_order.dart';
import 'package:resturant/cart_model.dart';
import 'package:resturant/database_helper.dart';
import 'package:resturant/theme/shared_preference.dart';







class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {

  final _searchController = TextEditingController();
  List<int> productPrice = [10, 20 , 30 , 40 , 30 , 40 , 50, 60  ] ;
  List<String> productImage = [
    'assets/images/biryani.jpg' ,
    'assets/images/steak.jpg' ,
    'assets/images/pasta.jpg' ,
    'assets/images/ramen.jpg' ,
    'assets/images/pancakes.jpg' ,
    'assets/images/burger.jpg' ,
    'assets/images/pizza.jpg' ,
    'assets/images/salmon.jpg' ,

  ] ;
  List<String> productNames = ['Biryani' , 'Steak' , 'Pasta' , 'Ramen' , 'Pancakes' , 'Burger', 'Pizza' , 'Salmon Salad' ] ;
  List<String> productName =[];

  DBHelper? dbHelper = DBHelper();

  @override
  void initState() {
    // TODO: implement initState
    productName = productNames;

  }

  ///...............WE use FUNCTION IN SEARCHING A THROUGH NAME AND FATHER NAME


  void _searchNames(String query) {
    setState(() {
      productName = productNames
          .where((id) => id.contains(query)).toList();
    });
  }




  @override
  Widget build(BuildContext context) {
    double listContainerHeight = MediaQuery.of(context).size.height - 150;
    // final text = MediaQuery.of(context).platformBrightness == Brightness.dark ? 'DartTheme' :'LightTheme';
    final cart  = Provider.of<CartProvider>(context);
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Khan Resturant'),
        centerTitle: true,
        actions: [

          Row(
            children: [
              ChangeThemeButtonWidget(),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => CartScreen()));
                },
                child: Center(
                  child: bg.Badge(
                    showBadge: true,
                    badgeContent: Consumer<CartProvider>(
                      builder: (context, value , child){
                        return Text(value.getCounter().toString(),style: TextStyle(color: Colors.white));
                      },
                    ),
                    animationType: bg.BadgeAnimationType.fade,
                    animationDuration: Duration(milliseconds: 300),
                    child: Icon(Icons.shopping_bag_outlined),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(width: 20.0)
        ],
      ),
      drawer: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height:  230,
              child: DrawerHeader(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/sohaib.jpeg'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Sohaib Saleem',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'sohaibsaleem89@gmail.com',
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                ),
              ),
            ),

            BlurContainer(
              containerHeight: listContainerHeight,
              child: ItemPicker(containerHeight: listContainerHeight),
            ),
          ],
        ),
      ),


      // Drawer(
      //   // Add a ListView to the drawer. This ensures the user can scroll
      //   // through the options in the drawer if there isn't enough vertical
      //   // space to fit everything.
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       Container(
      //         width: double.infinity,
      //         height:  230,
      //         child: DrawerHeader(
      //
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               CircleAvatar(
      //                 radius: 50,
      //                 backgroundImage: AssetImage('assets/images/sohaib.jpeg'),
      //               ),
      //               SizedBox(height: 10),
      //               Text(
      //                 'Sohaib Saleem',
      //                 style: TextStyle(
      //                   fontSize: 22,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //               Text(
      //                 'sohaibsaleem89@gmail.com',
      //                 style: TextStyle(
      //                   fontSize: 9,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ],
      //           ),
      //           decoration: BoxDecoration(
      //             color: Colors.deepOrange,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home_outlined),
      //         title: const Text('Home'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.favorite_border),
      //         title: const Text('Favorite'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.workspaces_outline),
      //         title: const Text('Work'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.table_bar),
      //         title: const Text('Reserve your table'),
      //         onTap: () {
      //           Navigator.push(context, MaterialPageRoute(builder: (context){
      //             return Reserve_table();
      //           }));
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.update),
      //         title: const Text('Update'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.notifications_outlined),
      //         title: const Text('Notification'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //
      //     currentIndex: 1,
      //   // selectedIndex: _selectedIndex,
      //   // onTabChange: (clickedIndex) {
      //   //   setState(() {
      //   //     _selectedIndex = clickedIndex;
      //   //   });
      //   // },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _searchController,
              onChanged: (abc) => _searchNames(abc),

              decoration: InputDecoration(
                  // fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(width: 0.8)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          width: 0.8, color: Colors.deepOrangeAccent)),
                  hintText: "Search Food ",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                      onPressed: () {
                        _searchController.clear();
                        setState(() {

                        });
                      },
                      icon: const Icon(Icons.clear))),
            ),
          ),
          RecentOrders(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Order Now!!",
              style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: productName.length,
                itemBuilder: (context, index){
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [

                              InkWell(
                                onTap : (){

                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return hero(ind:index);
                                  }));
                                  },
                               child: Image(
                                  height: 150,

                                  width: 150,
                                  image: AssetImage(productImage[index].toString()),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // Image(
                              //   height: 150,
                              //   width: 150,
                              //   image: AssetImage(productImage[index].toString()),
                              // ),
                              SizedBox(width: 20,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(productName[index].toString() ,
                                    style: const TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 5,),

                                  RatingBar.builder(
                                      initialRating: 5,
                                      itemCount: 5,
                                      allowHalfRating: true,
                                      minRating: 1,
                                      unratedColor: Colors.grey,
                                      itemSize: 20,
                                      direction: Axis.horizontal,
                                      itemBuilder: (context, _) =>
                                      (const Icon(Icons.star, color: Colors.amber)),
                                      onRatingUpdate: (rating) {
                                        Text('2');
                                      }),
                                  Text(r"$"+ productPrice![index].toString() ,
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                   SizedBox(
                                     height: 5,
                                   ),
                                   Align(
                                     alignment: Alignment.centerRight,
                                     child: InkWell(
                                       onTap: (){
                                         print(index);
                                         print(index);
                                         print(productName[index].toString());
                                         print( productPrice[index].toString());
                                         print( productPrice[index]);
                                         print('1');
                                         // print(productUnit[index].toString());
                                         print(productImage[index].toString());

                                         dbHelper!.insert(
                                             Cart(
                                                 id: index,
                                                 productId: index.toString(),
                                                 productName: productName[index].toString(),
                                                 initialPrice: productPrice[index],
                                                 productPrice: productPrice[index],
                                                 quantity: 1,
                                                // unitTag: productUnit[index].toString(),
                                                image: productImage[index].toString())
                                        ).then((value){

                                          cart.addTotalPrice(double.parse(productPrice[index].toString()));
                                          cart.addCounter();

                                          final snackBar = SnackBar(backgroundColor: Colors.green,content: Text('Product is added to cart'), duration: Duration(seconds: 1),);

                                          ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                        }).onError((error, stackTrace){
                                          print("error"+error.toString());
                                          final snackBar = SnackBar(backgroundColor: Colors.red ,content: Text('Product is already added in cart'), duration: Duration(seconds: 1));

                                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                        });
                                      },
                                      child:  Center(
                                        child: Container(
                                          height: 35,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrange,
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: const Center(
                                            child:  Text('Add to cart' , style: TextStyle(color: Colors.white),),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )

                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),

        ],
      ),
    );
  }


}





///......................drawer.................................///


const Color pink = Colors.deepOrange;
const Color pinkDark = Color(0xffD64265);
const Color yellow = Color(0xffE7F18F);
const Color yellowDark = Color(0xffB8C72B);
const Color purple = Color(0xff323AE9);

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
              color: Colors.white.withOpacity(0.5),
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


class ItemPicker extends StatefulWidget {
  const ItemPicker({
    Key? key,
    required this.containerHeight,
  }) : super(key: key);

  final double containerHeight;

  @override
  State<ItemPicker> createState() => _ItemPickerState();
}

class _ItemPickerState extends State<ItemPicker> {
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    const double listContainerBorderWidth = 1.5;
    const int itemsCount = 8;
    double itemHeight =
        (widget.containerHeight - listContainerBorderWidth * 2) / itemsCount;

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [

          AnimatedPositioned(
            top: selectedItemIndex * itemHeight,
            left: 0,
            right: 0,
            height: itemHeight,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      ListTile(


                        leading: Icon(Icons.home_outlined),
                        title: const Text('Home'),
                        onTap: () {
                          selectedItemIndex;
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          // Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.favorite_border),
                        title: const Text('Favorite'),
                        onTap: () {
                          // Update the state of the app
                          selectedItemIndex;
                          // Then close the drawer
                          // Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.workspaces_outline),
                        title: const Text('Work'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          // Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.table_bar),
                        title: const Text('Reserve your table'),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Reserve_table();
                          }));
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.update),
                        title: const Text('Update'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          // Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.notifications_outlined),
                        title: const Text('Notification'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          // Navigator.pop(context);
                        },
                      ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
