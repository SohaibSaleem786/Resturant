
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resturant/theme/model_theme.dart';

  List<String> _productName = ['Rice' , 'Steaks' , 'Macronies' , 'Shawarma' , 'Doble taker pizza' , 'Burger','Mixed Fruit Basket',] ;
   // List<String> productUnit = ['KG' , 'Dozen' , 'KG' , 'Dozen' , 'KG' , 'KG','KG',] ;
     List<int> _productPrice = [10, 20 , 30 , 40 , 50, 60 , 70 ] ;
      List<String> _productImage = [
  'assets/images/ramen.jpg' ,
  'assets/images/steak.jpg' ,
  'assets/images/pasta.jpg' ,
  'assets/images/burrito.jpg' ,
  'assets/images/pancakes.jpg' ,
  'assets/images/burger.jpg' ,
  'assets/images/pizza.jpg' ,
] ;
class RecentOrders extends StatelessWidget {
  const RecentOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Recent Orders",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w600, letterSpacing: 1.2),
          ),
        ),
        Container(
          height: 120,
          // color: Colors.blue,
          child: ListView.builder(
            itemCount: _productName.length,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              physics: const ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              // itemCount: currentUser.orders.length,
              itemBuilder: (BuildContext context, int index) {
                // Order order = currentUser.orders[index];
                return Container(
                  width: 320,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1.0, color: Colors.grey.shade200)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(_productImage[index].toString()),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _productName[index].toString(),
                                      style: const TextStyle(
                                          fontSize: 18, fontWeight: FontWeight.bold),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      _productName[index].toString(),
                                      style: const TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.w600),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                        _productPrice[index].toString(),
                                        style: const TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.w600))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 30,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }

}
