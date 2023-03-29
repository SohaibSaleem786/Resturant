import 'package:badges/badges.dart' as bg;
import 'package:flutter/material.dart';
import 'package:resturant/Screen/recent_order.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:provider/provider.dart';
import 'package:resturant/CartProvider.dart';
import 'package:resturant/Screen/product.dart';
import 'package:resturant/cart_model.dart';
import 'package:resturant/database_helper.dart';

import '../PDF/splash.dart';




class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {


  @override
  void initState() {
    super.initState();
    PdfGenerator.init();
  }


  DBHelper? dbHelper = DBHelper();

  @override
  Widget build(BuildContext context) {
    final cart  = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Check Out'),
        centerTitle: true,
        actions: [

         InkWell(
          onTap: (){
            PdfGenerator.createPdf();
          },
          child: Image.asset(
          'assets/images/pdf.png',
          width: 24,
          height: 24,

      ),
        ),
          SizedBox(
            width: 11,
          ),

          Center(
            child: bg.Badge(
              badgeContent: Consumer<CartProvider>(
                builder: (context, value , child){
                  return Text(value.getCounter().toString(),style: TextStyle(color: Colors.white));
                },

              ),
              animationDuration: Duration(milliseconds: 300),
              animationType: bg.BadgeAnimationType.slide,
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ),
          SizedBox(width: 20.0)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            RecentOrders(),
            Divider(
              thickness: 8,
              color: Colors.orange,
            ),
            FutureBuilder(
                future:cart.getData() ,
                builder: (context , AsyncSnapshot<List<Cart>> snapshot){
                  if(snapshot.hasData){

                    if(snapshot.data!.isEmpty){
                      return Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            InkWell(
                              onTap :(){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ProductListScreen();
                        }));
                      },
                              child: Image(
                                width: 180,
                                height: 180,
                                image: AssetImage('assets/images/empty.png'),

                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('Your cart is empty 😌' ,style: Theme.of(context).textTheme.headline5),
                            SizedBox(height: 20,),
                            Text('Explore products and shop your\nfavourite items' , textAlign: TextAlign.center ,style: Theme.of(context).textTheme.subtitle2)

                          ],
                        ),
                      );
                    }else {
                      return Expanded(
                        child: ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index){
                              return Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image(
                                            height: 100,
                                            width: 100,
                                            image: AssetImage(snapshot.data![index].image.toString()),
                                          ),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(snapshot.data![index].productName.toString() ,
                                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                                    ),
                                                    InkWell(
                                                        onTap: (){
                                                          dbHelper!.delete(snapshot.data![index].id!);
                                                          cart.removerCounter();
                                                          cart.removeTotalPrice(double.parse(snapshot.data![index].productPrice.toString()));
                                                        },
                                                        child: Icon(Icons.delete))
                                                  ],
                                                ),

                                                SizedBox(height: 5,),
                                                Row(
                                                  children: [
                                                    Text(r"$"+ snapshot.data![index].productPrice.toString() ,
                                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        showDialog(
                                                          context: context,
                                                          builder: (BuildContext context) {
                                                            return AlertDialog(
                                                              backgroundColor: Colors.deepOrange,
                                                              title: Text('Additional Information'),
                                                              content: Text('Item tax: 15% \n'
                                                                  'Item discount: 0.00% '),
                                                              actions: [
                                                                // ElevatedButton(
                                                                //   onPressed: () {
                                                                //     Navigator.of(context).pop();
                                                                //   },
                                                                //   child: Text('OK'),
                                                                // ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      },
                                                      // child: Text('Show Dialog'),
                                                      child: Image(
                                                        height: 24,
                                                        width: 24,
                                                        image: AssetImage('assets/images/info.png'),



                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                SizedBox(height: 5,),
                                                Align(
                                                  alignment: Alignment.centerRight,
                                                  child: InkWell(
                                                    onTap: (){


                                                    },
                                                    child:  Container(
                                                      height: 35,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                          color: Colors.deepOrange,
                                                          borderRadius: BorderRadius.circular(5)
                                                      ),
                                                      child:  Padding(
                                                        padding: const EdgeInsets.all(4.0),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            InkWell(
                                                                onTap: (){

                                                                  int quantity =  snapshot.data![index].quantity! ;
                                                                  int price = snapshot.data![index].initialPrice!;
                                                                  quantity--;
                                                                  int? newPrice = price * quantity ;

                                                                  if(quantity > 0){
                                                                    dbHelper!.updateQuantity(
                                                                        Cart(
                                                                            id: snapshot.data![index].id!,
                                                                            productId: snapshot.data![index].id!.toString(),
                                                                            productName: snapshot.data![index].productName!,
                                                                            initialPrice: snapshot.data![index].initialPrice!,
                                                                            productPrice: newPrice,
                                                                            quantity: quantity,
                                                                            // unitTag: snapshot.data![index].unitTag.toString(),
                                                                            image: snapshot.data![index].image.toString())
                                                                    ).then((value){
                                                                      newPrice = 0 ;
                                                                      quantity = 0;
                                                                      cart.removeTotalPrice(double.parse(snapshot.data![index].initialPrice!.toString()));
                                                                    }).onError((error, stackTrace){
                                                                      print(error.toString());
                                                                    });
                                                                  }

                                                                },
                                                                child: Icon(Icons.remove , color: Colors.white,)),
                                                            Text( snapshot.data![index].quantity.toString(), style: TextStyle(color: Colors.white)),
                                                            InkWell(
                                                                onTap: (){
                                                                  int quantity =  snapshot.data![index].quantity! ;
                                                                  int price = snapshot.data![index].initialPrice!;
                                                                  quantity++;
                                                                  int? newPrice = price * quantity ;

                                                                  dbHelper!.updateQuantity(
                                                                      Cart(
                                                                          id: snapshot.data![index].id!,
                                                                          productId: snapshot.data![index].id!.toString(),
                                                                          productName: snapshot.data![index].productName!,
                                                                          initialPrice: snapshot.data![index].initialPrice!,
                                                                          productPrice: newPrice,
                                                                          quantity: quantity,
                                                                          // unitTag: snapshot.data![index].unitTag.toString(),
                                                                          image: snapshot.data![index].image.toString())
                                                                  ).then((value){
                                                                    newPrice = 0 ;
                                                                    quantity = 0;
                                                                    cart.addTotalPrice(double.parse(snapshot.data![index].initialPrice!.toString()));
                                                                  }).onError((error, stackTrace){
                                                                    print(error.toString());
                                                                  });
                                                                },
                                                                child: Icon(Icons.add , color: Colors.white,)),

                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )

                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      );
                    }

                  }
                  return Text('') ;
                }),
            Container(
              height: 120,
              // color: Colors.deepOrange[300],
               child:  Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Consumer<CartProvider>(builder: (context, value, child){
                   return Visibility(
                     visible: value.getTotalPrice().toStringAsFixed(2) == "0.00" ? false : true,
                     child: Column(

                       children: [

                         ReusableWidget(title: 'Sub Total', value: r'$'+value.getTotalPrice().toStringAsFixed(2),),
                         ReusableWidget(title: 'Discout 5%', value: r'$'+'20',),
                         Divider(thickness: 3,color: Colors.deepOrange,),
                         ReusableWidget(title: 'Total', value: r'$'+value.getTotalPrice().toStringAsFixed(2),),
                         Text('Minimum order limit is 350 USD'),

                       ],
                     ),
                   );
                 }),
               ),
            )
          ],
        ),
      ) ,
    );
  }
}


class ReusableWidget extends StatelessWidget {
  final String title , value ;
  const ReusableWidget({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title , style: Theme.of(context).textTheme.subtitle2,),
          Text(value.toString() , style: Theme.of(context).textTheme.subtitle2,)
        ],
      ),
    );
  }
}