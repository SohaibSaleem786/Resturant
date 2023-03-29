import 'package:flutter/material.dart';
import 'package:resturant/cart_model.dart';

class hero extends StatefulWidget {
  int ind;
  hero({required this.ind,Key? key}) : super(key: key);

  @override
  State<hero> createState() => _heroState();
}

class _heroState extends State<hero> {

  List<String> productName = [    'Steak',
    'Pasta',
    'Ramen',
    'Pancakes',
    'Burger',
    'Pizza',
    'Salmon Salad',
    'Biryani',
  ] ;
  // List<String> productUnit = ['KG' , 'Dozen' , 'KG' , 'Dozen' , 'KG' , 'KG',] ;
  List<int> productPrice = [10, 20 , 30 , 40 , 30 , 40 , 50, 60  ] ;
  List<String> productImage = [
    'assets/images/steak.jpg',
    'assets/images/pasta.jpg',
    'assets/images/ramen.jpg',
    'assets/images/pancakes.jpg',
    'assets/images/burger.jpg',
    'assets/images/pizza.jpg',
    'assets/images/salmon.jpg',
    'assets/images/biryani.jpg',

  ] ;

  List<String> productdescrip = [
    'Shawarma is known for its bold flavors and spices, which may include cumin, paprika, garlic, and coriander. The dish is often accompanied by a variety of sauces such as garlic yogurt sauce, hot sauce, or tahini sauce, which add an extra layer of flavor to the already delicious combination of meat and vegetables',


    'Steak is a classic meat dish that is loved by people all around the world. It is typically made from high-quality cuts of beef, such as ribeye, sirloin, or filet mignon. The steak is cooked to the desired level of doneness, which can range from rare to well-done, and then seasoned with a variety of herbs and spices, such as salt, pepper, garlic, and rosemary.' ,
    'We offer a range of pasta shapes and sizes, from classic spaghetti and fettuccine to more unique varieties like fusilli and penne. Our sauces are made from the freshest ingredients, including ripe tomatoes, fragrant herbs, and high-quality cheeses, to create rich and flavorful dishes that are sure to please.' ,
    'We offer a variety of ramen styles, from classic tonkotsu and miso to more unique varieties like shoyu and spicy tantan. Our broths are made from a variety of ingredients, including pork bones, chicken, and seafood, to create rich and flavorful soups that are full of umami.' ,
    'We offer a range of pancake styles, from classic buttermilk and blueberry to more unique varieties like chocolate chip and banana walnut. Our pancakes are always made with the freshest ingredients, including real butter, fresh milk, and high-quality flour, to create a delicious and satisfying meal.' ,
    'We offer a range of burger styles, from classic cheeseburgers and bacon burgers to more unique options like mushroom Swiss and avocado ranch. Our toppings include everything from crisp lettuce and ripe tomatoes to savory bacon and tangy pickles, while our sauces range from classic ketchup and mustard to bold barbecue and spicy aioli.' ,
    'Our pizza is a mouth-watering delight that starts with a crispy, hand-tossed crust made from the finest quality ingredients. Its then smothered with a rich, savory tomato sauce and generously topped with an array of fresh, flavorful ingredients like melted mozzarella cheese, juicy tomatoes, sweet onions, and savory meats.' ,
    'Our Salmon Salad Pizza is a unique and flavorful twist on traditional pizza thats sure to delight your taste buds. It starts with a crispy, hand-tossed crust, which is then topped with a zesty mixture of fresh salmon, crisp greens, and tangy vinaigrette dressing. Each bite is a perfect combination of textures and flavors ' ,

  ] ;

  List<Cart> resturant = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName[widget.ind]),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              height: 300,
              width: 350,
              image: AssetImage(productImage[widget.ind]),
              fit: BoxFit.cover,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [

                        // Image(
                        //   height: 150,
                        //   width: 150,
                        //   image: AssetImage(productImage[index].toString()),
                        // ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 11,
                            ),
                            Center(
                              child: Text(
                                productName[widget.ind],
                                style: const TextStyle(
                                    fontSize: 33, fontWeight: FontWeight.bold,color: Colors.deepOrange),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              height: 21,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Price ',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  r"$" + '${productPrice[widget.ind]}',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 33,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                productdescrip[widget.ind],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                            // Align(
                            //   alignment: Alignment.centerRight,
                            //   child: InkWell(
                            //     onTap: () {
                            //       print(index);
                            //       print(index);
                            //       print(productName[index].toString());
                            //       print(productPrice[index].toString());
                            //       print(productPrice[index]);
                            //       print('1');
                            //       // print(productUnit[index].toString());
                            //       print(productImage[index].toString());
                            //
                            //       dbHelper!
                            //           .insert(Cart(
                            //           id: index,
                            //           productId: index.toString(),
                            //           productName: productName[index]
                            //               .toString(),
                            //           initialPrice:
                            //           productPrice[index],
                            //           productPrice:
                            //           productPrice[index],
                            //           quantity: 1,
                            //           // unitTag: productUnit[index].toString(),
                            //           image: productImage[index]
                            //               .toString()))
                            //           .then((value) {
                            //         cart.addTotalPrice(double.parse(
                            //             productPrice[index].toString()));
                            //         cart.addCounter();
                            //
                            //         final snackBar = SnackBar(
                            //           backgroundColor: Colors.green,
                            //           content: Text(
                            //               'Product is added to cart'),
                            //           duration: Duration(seconds: 1),
                            //         );
                            //
                            //         ScaffoldMessenger.of(context)
                            //             .showSnackBar(snackBar);
                            //       }).onError((error, stackTrace) {
                            //         print("error" + error.toString());
                            //         final snackBar = SnackBar(
                            //             backgroundColor: Colors.red,
                            //             content: Text(
                            //                 'Product is already added in cart'),
                            //             duration: Duration(seconds: 1));
                            //
                            //         ScaffoldMessenger.of(context)
                            //             .showSnackBar(snackBar);
                            //       });
                            //     },
                            //     child: Center(
                            //       child: Container(
                            //         height: 35,
                            //         width: 100,
                            //         decoration: BoxDecoration(
                            //             color: Colors.deepOrange,
                            //             borderRadius:
                            //             BorderRadius.circular(5)),
                            //         child: const Center(
                            //           child: Text(
                            //             'Add to cart',
                            //             style: TextStyle(
                            //                 color: Colors.white),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  // height: 170,
                  width: 170,
                  child: Card(

                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            height: 120,
                            width: 170,
                            image: AssetImage(productImage[widget.ind]),
                            fit: BoxFit.cover,
                          ),

                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 11,
                              ),
                              Center(
                                child: Text(
                                  productName[widget.ind],
                                  style: const TextStyle(
                                      fontSize: 33, fontWeight: FontWeight.bold,color: Colors.deepOrange),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Price ',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    r"$" + '${productPrice[widget.ind]}',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  // height: 170,
                  width: 170,
                  child: Card(

                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            height: 120,
                            width: 170,
                            image: AssetImage(productImage[widget.ind]),
                            fit: BoxFit.cover,
                          ),

                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 11,
                              ),
                              Center(
                                child: Text(
                                  productName[widget.ind],
                                  style: const TextStyle(
                                      fontSize: 33, fontWeight: FontWeight.bold,color: Colors.deepOrange),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Price ',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    r"$" + '${productPrice[widget.ind]}',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  // height: 170,
                  width: 170,
                  child: Card(

                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            height: 120,
                            width: 170,
                            image: AssetImage(productImage[widget.ind]),
                            fit: BoxFit.cover,
                          ),

                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 11,
                              ),
                              Center(
                                child: Text(
                                  productName[widget.ind],
                                  style: const TextStyle(
                                      fontSize: 33, fontWeight: FontWeight.bold,color: Colors.deepOrange),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Price ',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    r"$" + '${productPrice[widget.ind]}',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  // height: 170,
                  width: 170,
                  child: Card(

                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            height: 120,
                            width: 170,
                            image: AssetImage(productImage[widget.ind]),
                            fit: BoxFit.cover,
                          ),

                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 11,
                              ),
                              Center(
                                child: Text(
                                  productName[widget.ind],
                                  style: const TextStyle(
                                      fontSize: 33, fontWeight: FontWeight.bold,color: Colors.deepOrange),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Price ',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    r"$" + '${productPrice[widget.ind]}',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  // height: 170,
                  width: 170,
                  child: Card(

                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            height: 120,
                            width: 170,
                            image: AssetImage(productImage[widget.ind]),
                            fit: BoxFit.cover,
                          ),

                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 11,
                              ),
                              Center(
                                child: Text(
                                  productName[widget.ind],
                                  style: const TextStyle(
                                      fontSize: 33, fontWeight: FontWeight.bold,color: Colors.deepOrange),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Price ',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    r"$" + '${productPrice[widget.ind]}',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  // height: 170,
                  width: 170,
                  child: Card(

                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            height: 120,
                            width: 170,
                            image: AssetImage(productImage[widget.ind]),
                            fit: BoxFit.cover,
                          ),

                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 11,
                              ),
                              Center(
                                child: Text(
                                  productName[widget.ind],
                                  style: const TextStyle(
                                      fontSize: 33, fontWeight: FontWeight.bold,color: Colors.deepOrange),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Price ',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    r"$" + '${productPrice[widget.ind]}',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
