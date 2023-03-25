import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:slide_countdown/slide_countdown.dart';
// typedef FlipWidgetBuilder = Widget Function(BuildContext context, bool isBackground);

class offer_dishes extends StatefulWidget {
  const offer_dishes({Key? key}) : super(key: key);

  @override
  State<offer_dishes> createState() => _offer_dishesState();
}

class _offer_dishesState extends State<offer_dishes> {







  /// color
  var gradientColor = GradientTemplate.gradientTemplate[0].colors;
  var gradientColor1 = GradientTemplate1.gradientTemplate[0].colors;
  var gradientColor2 = GradientTemplate2.gradientTemplate[0].colors;
  var gradientColor3 = GradientTemplate3.gradientTemplate[0].colors;
  var gradientColor4 = GradientTemplate4.gradientTemplate[0].colors;

  late CountdownTimerController controller;
  int endTime = DateTime
      .now()
      .millisecondsSinceEpoch + 1000 * 30;


  @override
  void initState() {
    super.initState();
    // controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text('Deals')),
        backgroundColor: Colors.deepOrange,
      ),
        body: Padding(
          padding: const EdgeInsets.only(top: 9),
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/deals.jpeg"),
                  fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(

              child: Padding(

                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    // Image(image: AssetImage('assets/images/deals.jpeg'),
                    //   fit: BoxFit.cover,),

                    SizedBox(height: 50),

                    // Text(
                    //   'Incredible Deals and Discounts at Your Favorite Restaurants!',
                    //   style: TextStyle(color: Colors.white,
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 23),),
                    SizedBox(height: 21),

                    Card(

                        child: FlipCard(
                          front: Container(
                             padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gradientColor,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: gradientColor.last.withOpacity(0.4),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.label,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Family Meal Deal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'avenir',
                                              fontSize: 21,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      onChanged: (bool value) {},
                                      value: true,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Mon-Fri',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'avenir'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'combo meal,\n'
                                              'large fries, \n'
                                              'and a large drink.\n ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            // fontFamily: 'avenir',
                                            fontSize: 17,
                                            // fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image(
                                        height: 111,
                                        width: 111,
                                        image: AssetImage('assets/images/pizza.jpg'))
                                  ],
                                ),
                                Center(
                                  child: SlideCountdown(
                                    decoration: BoxDecoration(color: Colors.deepOrange),
                                    duration: Duration(days: 3),
                                  ),
                                )
                              ],
                            ),
                          ),
                          back: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gradientColor,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: gradientColor.last.withOpacity(0.4),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.label,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Family Meal Deal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'avenir',
                                              fontSize: 21,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      onChanged: (bool value) {},
                                      value: true,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Mon-Fri',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'avenir'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'combo meal,\n'
                                              'large fries, \n'
                                              'and a large drink.\n ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            // fontFamily: 'avenir',
                                            fontSize: 17,
                                            // fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image(
                                        height: 111,
                                        width: 111,
                                        image: AssetImage('assets/images/pizza.jpg'))
                                  ],
                                ),
                                Center(
                                  child: SlideCountdown(
                                    decoration: BoxDecoration(color: Colors.deepOrange),
                                    duration: Duration(days: 3),
                                  ),
                                )
                              ],
                            ),
                          ),

                        )
                    ),
                    Card(

                        child: FlipCard(
                          front: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gradientColor1,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: gradientColor1.last.withOpacity(0.4),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.label,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Student Discount',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'avenir',
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      onChanged: (bool value) {},
                                      value: true,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Mon-Fri',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'avenir'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'Discount for students \n'
                                              'Show student ID \n'
                                              '10% off their total order.',
                                          style: TextStyle(
                                            color: Colors.white,
                                            // fontFamily: 'avenir',
                                            fontSize: 14,
                                            // fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image(
                                        height: 111,
                                        width: 111,
                                        image: AssetImage('assets/images/pancakes.jpg'))
                                  ],
                                ),
                                Center(
                                  child: SlideCountdown(
                                    decoration: BoxDecoration(color: Colors.deepOrange),
                                    duration: Duration(days: 5),
                                  ),
                                )
                              ],
                            ),
                          ),
                          back: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gradientColor1,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: gradientColor1.last.withOpacity(0.4),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.label,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Student Discount',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'avenir',
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      onChanged: (bool value) {},
                                      value: true,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Mon-Fri',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'avenir'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'Discount for students \n'
                                              'Show student ID \n'
                                              '10% off their total order.',
                                          style: TextStyle(
                                            color: Colors.white,
                                            // fontFamily: 'avenir',
                                            fontSize: 14,
                                            // fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image(
                                        height: 111,
                                        width: 111,
                                        image: AssetImage('assets/images/pancakes.jpg'))
                                  ],
                                ),
                                Center(
                                  child: SlideCountdown(
                                    decoration: BoxDecoration(color: Colors.deepOrange),
                                    duration: Duration(days: 5),
                                  ),
                                )
                              ],
                            ),
                          ),

                        )
                    ),
                    Card(

                        child: FlipCard(
                          front: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gradientColor2,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: gradientColor2.last.withOpacity(0.4),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.label,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'BOGO Deal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'avenir',
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      onChanged: (bool value) {},
                                      value: true,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Mon-Fri',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'avenir'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'Buy 1,get 1 free deal\n'
                                              'such as burgers\n'
                                              'sandwiches\n'
                                              'salads',
                                          style: TextStyle(
                                            color: Colors.white,
                                            // fontFamily: 'avenir',
                                            fontSize: 15,
                                            // fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image(
                                        height: 111,
                                        width: 111,
                                        image: AssetImage('assets/images/salmon.jpg'))
                                  ],
                                ),
                                Center(
                                  child: SlideCountdown(
                                    decoration: BoxDecoration(color: Colors.deepOrange),
                                    duration: Duration(days: 2),
                                  ),
                                )
                              ],
                            ),
                          ),
                          back: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gradientColor2,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: gradientColor2.last.withOpacity(0.4),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.label,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'BOGO Deal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'avenir',
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      onChanged: (bool value) {},
                                      value: true,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Mon-Fri',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'avenir'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'Buy 1,get 1 free deal\n'
                                              'such as burgers\n'
                                              'sandwiches\n'
                                              'salads',
                                          style: TextStyle(
                                            color: Colors.white,
                                            // fontFamily: 'avenir',
                                            fontSize: 15,
                                            // fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image(
                                        height: 111,
                                        width: 111,
                                        image: AssetImage('assets/images/salmon.jpg'))
                                  ],
                                ),
                                Center(
                                  child: SlideCountdown(
                                    decoration: BoxDecoration(color: Colors.deepOrange),
                                    duration: Duration(days: 2),
                                  ),
                                )
                              ],
                            ),
                          ),

                        )
                    ),
                    Card(

                        child: FlipCard(
                          front: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gradientColor3,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: gradientColor3.last.withOpacity(0.4),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.label,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Lunch Combo Deal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'avenir',
                                              fontSize: 17),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      onChanged: (bool value) {},
                                      value: true,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Mon-Fri',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'avenir'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'Offer a combo deal \n'
                                              'customers who visit \n'
                                              'during lunch hours \n'
                                              '(e.g. 11am-2pm)',
                                          style: TextStyle(
                                            color: Colors.white,
                                            // fontFamily: 'avenir',
                                            fontSize: 15,
                                            // fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image(
                                        height: 111,
                                        width: 111,
                                        image: AssetImage('assets/images/steak.jpg'))
                                  ],
                                ),
                                Center(
                                  child: SlideCountdown(
                                    decoration: BoxDecoration(color: Colors.deepOrange),
                                    duration: Duration(days: 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                          back: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gradientColor3,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: gradientColor3.last.withOpacity(0.4),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.label,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Lunch Combo Deal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'avenir',
                                              fontSize: 17),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      onChanged: (bool value) {},
                                      value: true,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Mon-Fri',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'avenir'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'Offer a combo deal \n'
                                              'customers who visit \n'
                                              'during lunch hours \n'
                                              '(e.g. 11am-2pm)',
                                          style: TextStyle(
                                            color: Colors.white,
                                            // fontFamily: 'avenir',
                                            fontSize: 15,
                                            // fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image(
                                        height: 111,
                                        width: 111,
                                        image: AssetImage('assets/images/steak.jpg'))
                                  ],
                                ),
                                Center(
                                  child: SlideCountdown(
                                    decoration: BoxDecoration(color: Colors.deepOrange),
                                    duration: Duration(days: 1),
                                  ),
                                )
                              ],
                            ),
                          ),

                        )
                    ),

                    Card(

                        child: FlipCard(
                          front: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gradientColor4,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: gradientColor4.last.withOpacity(0.4),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.label,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Deals 5',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'avenir',
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      onChanged: (bool value) {},
                                      value: true,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Mon-Fri',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'avenir'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'combo meal,\n'
                                              'large fries, \n'
                                              'and a large drink.\n ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            // fontFamily: 'avenir',
                                            fontSize: 17,
                                            // fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image(
                                        height: 111,
                                        width: 111,
                                        image: AssetImage('assets/images/ramen.jpg'))
                                  ],
                                ),


                                Center(

                                  child: SlideCountdown(
                                    // durationTitle:DurationTitle ,
                                    decoration: BoxDecoration(color: Colors.deepOrange),
                                    duration: Duration(days: 2),

                                  ),
                                )


                              ],
                            ),
                          ),
                          back: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: gradientColor4,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: gradientColor4.last.withOpacity(0.4),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.label,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Deals 5',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'avenir',
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                    Switch(
                                      onChanged: (bool value) {},
                                      value: true,
                                      activeColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Mon-Fri',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'avenir'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          'combo meal,\n'
                                              'large fries, \n'
                                              'and a large drink.\n ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            // fontFamily: 'avenir',
                                            fontSize: 17,
                                            // fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image(
                                        height: 111,
                                        width: 111,
                                        image: AssetImage('assets/images/ramen.jpg'))
                                  ],
                                ),


                                Center(

                                  child: SlideCountdown(
                                    // durationTitle:DurationTitle ,
                                    decoration: BoxDecoration(color: Colors.deepOrange),
                                    duration: Duration(days: 2),

                                  ),
                                )


                              ],
                            ),
                          ),

                        )
                    ),



                  ],
                ),
              ),
            ),
          ),
        )







    );
  }
}




//
//
//
// import 'package:flutter/material.dart';
//
// import 'package:flip_card/flip_card.dart';
// import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
//
//
//
//
// class offer extends StatefulWidget {
//   @override
//   State<offer> createState() => _offerState();
// }
//
// class _offerState extends State<offer> {
//
//
//
//
//   /// color
//   var gradientColor = GradientTemplate.gradientTemplate[0].colors;
//   var gradientColor1 = GradientTemplate1.gradientTemplate[0].colors;
//   var gradientColor2 = GradientTemplate2.gradientTemplate[0].colors;
//   var gradientColor3 = GradientTemplate3.gradientTemplate[0].colors;
//   var gradientColor4 = GradientTemplate4.gradientTemplate[0].colors;
//
//   late CountdownTimerController controller;
//   int endTime = DateTime
//       .now()
//       .millisecondsSinceEpoch + 1000 * 30;
//
//
//   @override
//   void initState() {
//     super.initState();
//     // controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
//   }
//
//
//
//   _renderBg() {
//     return Container(
//       decoration: BoxDecoration(color: const Color(0xFFFFFFFF)),
//     );
//   }
//
//   _renderAppBar(context) {
//     return MediaQuery.removePadding(
//       context: context,
//       removeBottom: true,
//       child: AppBar(
//         elevation: 0.0,
//         backgroundColor: Color(0x00FFFFFF),
//       ),
//     );
//   }
//
//   _renderContent(context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(30),
//         child: Column(
//           children: [
//             SizedBox(height: 21),
//
//             Text(
//               'Incredible Deals and Discounts at Your Favorite Restaurants!',
//               style: TextStyle(color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 23),),
//             SizedBox(height: 21),
//
//
//
//                Card(
//
//                elevation: 0.0,
//                margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
//                color: Color(0x00000000),
//                child: FlipCard(
//                 direction: FlipDirection.HORIZONTAL,
//                 side: CardSide.FRONT,
//                 speed: 1000,
//                 onFlipDone: (status) {
//                   print(status);
//                 },
//                 front: Container(
//                   height: 200,
//                   margin: const EdgeInsets.only(bottom: 32),
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 16, vertical: 8),
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: gradientColor,
//                       begin: Alignment.centerLeft,
//                       end: Alignment.centerRight,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: gradientColor.last.withOpacity(0.4),
//                         blurRadius: 8,
//                         spreadRadius: 2,
//                         offset: Offset(4, 4),
//                       ),
//                     ],
//                     borderRadius: BorderRadius.all(Radius.circular(24)),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Row(
//                             children: <Widget>[
//                               Icon(
//                                 Icons.label,
//                                 color: Colors.white,
//                                 size: 24,
//                               ),
//                               SizedBox(width: 8),
//                               Text(
//                                 'Family Meal Deal',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontFamily: 'avenir',
//                                     fontSize: 21,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                             ],
//                           ),
//                           // Switch(
//                           //   onChanged: (bool value) {},
//                           //   value: true,
//                           //   activeColor: Colors.white,
//                           // ),
//                         ],
//                       ),
//                       Text(
//                         'Mon-Fri',
//                         style: TextStyle(
//                             color: Colors.white, fontFamily: 'avenir'),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//
//                               Text(
//                                 'combo meal,\n'
//                                     'large fries, \n'
//                                     'and a large drink.\n ',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   // fontFamily: 'avenir',
//                                   fontSize: 17,
//                                   // fontWeight: FontWeight.w700
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Image(
//                               height: 55,
//                               width: 55,
//                               image: AssetImage('assets/images/pizza.jpg'))
//                         ],
//                       ),
//                       Center(
//                         child: SlideCountdown(
//                           decoration: BoxDecoration(color: Colors.deepOrange),
//                           duration: Duration(days: 3),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 back:  Container(
//                   margin: const EdgeInsets.only(bottom: 32),
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 16, vertical: 8),
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: gradientColor,
//                       begin: Alignment.centerLeft,
//                       end: Alignment.centerRight,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: gradientColor.last.withOpacity(0.4),
//                         blurRadius: 8,
//                         spreadRadius: 2,
//                         offset: Offset(4, 4),
//                       ),
//                     ],
//                     borderRadius: BorderRadius.all(Radius.circular(24)),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Row(
//                             children: <Widget>[
//                               Icon(
//                                 Icons.label,
//                                 color: Colors.white,
//                                 size: 24,
//                               ),
//                               SizedBox(width: 8),
//                               Text(
//                                 'Family Meal Deal',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontFamily: 'avenir',
//                                     fontSize: 21,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                             ],
//                           ),
//                           // Switch(
//                           //   onChanged: (bool value) {},
//                           //   value: true,
//                           //   activeColor: Colors.white,
//                           // ),
//                         ],
//                       ),
//                       Text(
//                         'Mon-Fri',
//                         style: TextStyle(
//                             color: Colors.white, fontFamily: 'avenir'),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//
//                               Text(
//                                 'combo meal,\n'
//                                     'large fries, \n'
//                                     'and a large drink.\n ',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   // fontFamily: 'avenir',
//                                   fontSize: 17,
//                                   // fontWeight: FontWeight.w700
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Image(
//                               height: 111,
//                               width: 111,
//                               image: AssetImage('assets/images/pizza.jpg'))
//                         ],
//                       ),
//                       Center(
//                         child: SlideCountdown(
//                           decoration: BoxDecoration(color: Colors.deepOrange),
//                           duration: Duration(days: 3),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//             ),
//           ),
//
//              Card(
//             elevation: 0.0,
//             margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
//             color: Color(0x00000000),
//             child: FlipCard(
//               direction: FlipDirection.HORIZONTAL,
//               side: CardSide.FRONT,
//               speed: 1000,
//               onFlipDone: (status) {
//                 print(status);
//               },
//               front: Container(
//                 margin: const EdgeInsets.only(bottom: 32),
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16, vertical: 8),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: gradientColor1,
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: gradientColor1.last.withOpacity(0.4),
//                       blurRadius: 8,
//                       spreadRadius: 2,
//                       offset: Offset(4, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.all(Radius.circular(24)),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Icon(
//                               Icons.label,
//                               color: Colors.white,
//                               size: 24,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               'Student Discount',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'avenir',
//                                   fontSize: 22),
//                             ),
//                           ],
//                         ),
//                         Switch(
//                           onChanged: (bool value) {},
//                           value: true,
//                           activeColor: Colors.white,
//                         ),
//                       ],
//                     ),
//                     Text(
//                       'Mon-Fri',
//                       style: TextStyle(
//                           color: Colors.white, fontFamily: 'avenir'),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             Text(
//                               'Discount for students \n'
//                                   'Show student ID \n'
//                                   '10% off their total order.',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 // fontFamily: 'avenir',
//                                 fontSize: 14,
//                                 // fontWeight: FontWeight.w700
//                               ),
//                             ),
//                           ],
//                         ),
//                         Image(
//                             height: 111,
//                             width: 111,
//                             image: AssetImage('assets/images/pancakes.jpg'))
//                       ],
//                     ),
//                     Center(
//                       child: SlideCountdown(
//                         decoration: BoxDecoration(color: Colors.deepOrange),
//                         duration: Duration(days: 5),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               back:  Container(
//                 margin: const EdgeInsets.only(bottom: 32),
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16, vertical: 8),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: gradientColor1,
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: gradientColor1.last.withOpacity(0.4),
//                       blurRadius: 8,
//                       spreadRadius: 2,
//                       offset: Offset(4, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.all(Radius.circular(24)),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Icon(
//                               Icons.label,
//                               color: Colors.white,
//                               size: 24,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               'Student Discount',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'avenir',
//                                   fontSize: 22),
//                             ),
//                           ],
//                         ),
//                         Switch(
//                           onChanged: (bool value) {},
//                           value: true,
//                           activeColor: Colors.white,
//                         ),
//                       ],
//                     ),
//                     Text(
//                       'Mon-Fri',
//                       style: TextStyle(
//                           color: Colors.white, fontFamily: 'avenir'),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             Text(
//                               'Discount for students \n'
//                                   'Show student ID \n'
//                                   '10% off their total order.',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 // fontFamily: 'avenir',
//                                 fontSize: 14,
//                                 // fontWeight: FontWeight.w700
//                               ),
//                             ),
//                           ],
//                         ),
//                         Image(
//                             height: 111,
//                             width: 111,
//                             image: AssetImage('assets/images/pancakes.jpg'))
//                       ],
//                     ),
//                     Center(
//                       child: SlideCountdown(
//                         decoration: BoxDecoration(color: Colors.deepOrange),
//                         duration: Duration(days: 5),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//              Card(
//             elevation: 0.0,
//             margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
//             color: Color(0x00000000),
//             child: FlipCard(
//               direction: FlipDirection.HORIZONTAL,
//               side: CardSide.FRONT,
//               speed: 1000,
//               onFlipDone: (status) {
//                 print(status);
//               },
//               front: Container(
//                 margin: const EdgeInsets.only(bottom: 32),
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16, vertical: 8),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: gradientColor2,
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: gradientColor2.last.withOpacity(0.4),
//                       blurRadius: 8,
//                       spreadRadius: 2,
//                       offset: Offset(4, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.all(Radius.circular(24)),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Icon(
//                               Icons.label,
//                               color: Colors.white,
//                               size: 24,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               'BOGO Deal',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'avenir',
//                                   fontSize: 22),
//                             ),
//                           ],
//                         ),
//                         Switch(
//                           onChanged: (bool value) {},
//                           value: true,
//                           activeColor: Colors.white,
//                         ),
//                       ],
//                     ),
//                     Text(
//                       'Mon-Fri',
//                       style: TextStyle(
//                           color: Colors.white, fontFamily: 'avenir'),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             Text(
//                               'Buy 1,get 1 free deal\n'
//                                   'such as burgers\n'
//                                   'sandwiches\n'
//                                   'salads',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 // fontFamily: 'avenir',
//                                 fontSize: 15,
//                                 // fontWeight: FontWeight.w700
//                               ),
//                             ),
//                           ],
//                         ),
//                         Image(
//                             height: 111,
//                             width: 111,
//                             image: AssetImage('assets/images/salmon.jpg'))
//                       ],
//                     ),
//                     Center(
//                       child: SlideCountdown(
//                         decoration: BoxDecoration(color: Colors.deepOrange),
//                         duration: Duration(days: 2),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               back:  Container(
//                 margin: const EdgeInsets.only(bottom: 32),
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16, vertical: 8),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: gradientColor2,
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: gradientColor2.last.withOpacity(0.4),
//                       blurRadius: 8,
//                       spreadRadius: 2,
//                       offset: Offset(4, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.all(Radius.circular(24)),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Icon(
//                               Icons.label,
//                               color: Colors.white,
//                               size: 24,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               'BOGO Deal',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'avenir',
//                                   fontSize: 22),
//                             ),
//                           ],
//                         ),
//                         Switch(
//                           onChanged: (bool value) {},
//                           value: true,
//                           activeColor: Colors.white,
//                         ),
//                       ],
//                     ),
//                     Text(
//                       'Mon-Fri',
//                       style: TextStyle(
//                           color: Colors.white, fontFamily: 'avenir'),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             Text(
//                               'Buy 1,get 1 free deal\n'
//                                   'such as burgers\n'
//                                   'sandwiches\n'
//                                   'salads',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 // fontFamily: 'avenir',
//                                 fontSize: 15,
//                                 // fontWeight: FontWeight.w700
//                               ),
//                             ),
//                           ],
//                         ),
//                         Image(
//                             height: 111,
//                             width: 111,
//                             image: AssetImage('assets/images/salmon.jpg'))
//                       ],
//                     ),
//                     Center(
//                       child: SlideCountdown(
//                         decoration: BoxDecoration(color: Colors.deepOrange),
//                         duration: Duration(days: 2),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//              Card(
//             elevation: 0.0,
//             margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
//             color: Color(0x00000000),
//             child: FlipCard(
//               direction: FlipDirection.HORIZONTAL,
//               side: CardSide.FRONT,
//               speed: 1000,
//               onFlipDone: (status) {
//                 print(status);
//               },
//               front: Container(
//                 margin: const EdgeInsets.only(bottom: 32),
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16, vertical: 8),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: gradientColor3,
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: gradientColor3.last.withOpacity(0.4),
//                       blurRadius: 8,
//                       spreadRadius: 2,
//                       offset: Offset(4, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.all(Radius.circular(24)),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Icon(
//                               Icons.label,
//                               color: Colors.white,
//                               size: 24,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               'Lunch Combo Deal',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'avenir',
//                                   fontSize: 21),
//                             ),
//                           ],
//                         ),
//                         Switch(
//                           onChanged: (bool value) {},
//                           value: true,
//                           activeColor: Colors.white,
//                         ),
//                       ],
//                     ),
//                     Text(
//                       'Mon-Fri',
//                       style: TextStyle(
//                           color: Colors.white, fontFamily: 'avenir'),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             Text(
//                               'Offer a combo deal \n'
//                                   'customers who visit \n'
//                                   'during lunch hours \n'
//                                   '(e.g. 11am-2pm)',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 // fontFamily: 'avenir',
//                                 fontSize: 15,
//                                 // fontWeight: FontWeight.w700
//                               ),
//                             ),
//                           ],
//                         ),
//                         Image(
//                             height: 111,
//                             width: 111,
//                             image: AssetImage('assets/images/steak.jpg'))
//                       ],
//                     ),
//                     Center(
//                       child: SlideCountdown(
//                         decoration: BoxDecoration(color: Colors.deepOrange),
//                         duration: Duration(days: 1),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               back:  Container(
//                 margin: const EdgeInsets.only(bottom: 32),
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16, vertical: 8),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: gradientColor3,
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: gradientColor3.last.withOpacity(0.4),
//                       blurRadius: 8,
//                       spreadRadius: 2,
//                       offset: Offset(4, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.all(Radius.circular(24)),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Icon(
//                               Icons.label,
//                               color: Colors.white,
//                               size: 24,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               'Lunch Combo Deal',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'avenir',
//                                   fontSize: 21),
//                             ),
//                           ],
//                         ),
//                         Switch(
//                           onChanged: (bool value) {},
//                           value: true,
//                           activeColor: Colors.white,
//                         ),
//                       ],
//                     ),
//                     Text(
//                       'Mon-Fri',
//                       style: TextStyle(
//                           color: Colors.white, fontFamily: 'avenir'),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             Text(
//                               'Offer a combo deal \n'
//                                   'customers who visit \n'
//                                   'during lunch hours \n'
//                                   '(e.g. 11am-2pm)',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 // fontFamily: 'avenir',
//                                 fontSize: 15,
//                                 // fontWeight: FontWeight.w700
//                               ),
//                             ),
//                           ],
//                         ),
//                         Image(
//                             height: 111,
//                             width: 111,
//                             image: AssetImage('assets/images/steak.jpg'))
//                       ],
//                     ),
//                     Center(
//                       child: SlideCountdown(
//                         decoration: BoxDecoration(color: Colors.deepOrange),
//                         duration: Duration(days: 1),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//              Card(
//             elevation: 0.0,
//             margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
//             color: Color(0x00000000),
//             child: FlipCard(
//               direction: FlipDirection.HORIZONTAL,
//               side: CardSide.FRONT,
//               speed: 1000,
//               onFlipDone: (status) {
//                 print(status);
//               },
//               front: Container(
//                 margin: const EdgeInsets.only(bottom: 32),
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16, vertical: 8),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: gradientColor4,
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: gradientColor4.last.withOpacity(0.4),
//                       blurRadius: 8,
//                       spreadRadius: 2,
//                       offset: Offset(4, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.all(Radius.circular(24)),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Icon(
//                               Icons.label,
//                               color: Colors.white,
//                               size: 24,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               'Deals 5',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'avenir',
//                                   fontSize: 22),
//                             ),
//                           ],
//                         ),
//                         Switch(
//                           onChanged: (bool value) {},
//                           value: true,
//                           activeColor: Colors.white,
//                         ),
//                       ],
//                     ),
//                     Text(
//                       'Mon-Fri',
//                       style: TextStyle(
//                           color: Colors.white, fontFamily: 'avenir'),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             Text(
//                               'combo meal,\n'
//                                   'large fries, \n'
//                                   'and a large drink.\n ',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 // fontFamily: 'avenir',
//                                 fontSize: 17,
//                                 // fontWeight: FontWeight.w700
//                               ),
//                             ),
//                           ],
//                         ),
//                         Image(
//                             height: 111,
//                             width: 111,
//                             image: AssetImage('assets/images/ramen.jpg'))
//                       ],
//                     ),
//
//
//                     Center(
//
//                       child: SlideCountdown(
//                         // durationTitle:DurationTitle ,
//                         decoration: BoxDecoration(color: Colors.deepOrange),
//                         duration: Duration(days: 2),
//
//                       ),
//                     )
//
//
//                   ],
//                 ),
//               ),
//               back:  Container(
//                 margin: const EdgeInsets.only(bottom: 32),
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16, vertical: 8),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: gradientColor4,
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: gradientColor4.last.withOpacity(0.4),
//                       blurRadius: 8,
//                       spreadRadius: 2,
//                       offset: Offset(4, 4),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.all(Radius.circular(24)),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Icon(
//                               Icons.label,
//                               color: Colors.white,
//                               size: 24,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               'Deals 5',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'avenir',
//                                   fontSize: 22),
//                             ),
//                           ],
//                         ),
//                         Switch(
//                           onChanged: (bool value) {},
//                           value: true,
//                           activeColor: Colors.white,
//                         ),
//                       ],
//                     ),
//                     Text(
//                       'Mon-Fri',
//                       style: TextStyle(
//                           color: Colors.white, fontFamily: 'avenir'),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             Text(
//                               'combo meal,\n'
//                                   'large fries, \n'
//                                   'and a large drink.\n ',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 // fontFamily: 'avenir',
//                                 fontSize: 17,
//                                 // fontWeight: FontWeight.w700
//                               ),
//                             ),
//                           ],
//                         ),
//                         Image(
//                             height: 111,
//                             width: 111,
//                             image: AssetImage('assets/images/ramen.jpg'))
//                       ],
//                     ),
//
//
//                     Center(
//
//                       child: SlideCountdown(
//                         // durationTitle:DurationTitle ,
//                         decoration: BoxDecoration(color: Colors.deepOrange),
//                         duration: Duration(days: 2),
//
//                       ),
//                     )
//
//
//                   ],
//                 ),
//               ),
//             ),
//           ),
//
//
//
//           ],
//         ),
//       ),
//     );
//
//
//
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepOrange,
//         title: Text('FlipCard'),
//       ),
//       body: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           _renderBg(),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               _renderAppBar(context),
//               Expanded(
//                 flex: 4,
//                 child: _renderContent(context),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: Container(),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
//
//
//
class GradientColors {
  final List<Color> colors;

  GradientColors(this.colors);

  static List<Color> sky = [Color(0xFFFFA738), Color(0xFF5FC6FF)];
// static List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];
// static List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
// static List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];
// static List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];
}

class GradientTemplate {
  static List<GradientColors> gradientTemplate = [
    GradientColors(GradientColors.sky),
    // GradientColors(GradientColors.sunset),
    // GradientColors(GradientColors.sea),
    // GradientColors(GradientColors.mango),
    // GradientColors(GradientColors.fire),
  ];
}


/// 111111111111111

class GradientColors1 {
  final List<Color> colors;

  GradientColors1(this.colors);

  static List<Color> skyy = [Color(0xFF6448FE), Color(0xFF5FC6FF)];
// // static List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];
// // static List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
// // static List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];
// static List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];
}

class GradientTemplate1 {
  static List<GradientColors1> gradientTemplate = [
    GradientColors1(GradientColors1.skyy),
    // // // GradientColors(GradientColors.sunset),
    // // // GradientColors(GradientColors.sea),
    // // // GradientColors(GradientColors.mango),
    // GradientColors1(GradientColors1.fire),
  ];
}

/// 2222222222222222222

class GradientColors2 {
  final List<Color> colors;

  GradientColors2(this.colors);

  // static List<Color> sky = [Color(0xFF6448FE), Color(0xFF5FC6FF)];
  static List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];
// static List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
// static List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];
// static List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];
}

class GradientTemplate2 {
  static List<GradientColors2> gradientTemplate = [
    // GradientColors(GradientColors.sky),
    GradientColors2(GradientColors2.sunset),
    // GradientColors(GradientColors.sea),
    // // GradientColors(GradientColors.mango),
    // GradientColors2(GradientColors2.fire),
  ];
}

/// 333333333333333

class GradientColors3 {
  final List<Color> colors;

  GradientColors3(this.colors);

  // static List<Color> sky = [Color(0xFF6448FE), Color(0xFF5FC6FF)];
  // static List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];
  static List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
// static List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];
// static List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];
}

class GradientTemplate3 {
  static List<GradientColors3> gradientTemplate = [
    // GradientColors(GradientColors.sky),
    // // GradientColors(GradientColors.sunset),
    GradientColors3(GradientColors3.sea),
    // // GradientColors(GradientColors.mango),
    // GradientColors3(GradientColors3.fire),
  ];
}

/// 44444444444444444

class GradientColors4 {
  final List<Color> colors;

  GradientColors4(this.colors);

  // static List<Color> sky = [Color(0xFF6448FE), Color(0xFF5FC6FF)];
  // static List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];
  // static List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
  // static List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];
  static List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];
}

class GradientTemplate4 {
  static List<GradientColors4> gradientTemplate = [
    // GradientColors(GradientColors.sky),
    // // GradientColors(GradientColors.sunset),
    // // GradientColors(GradientColors.sea),
    // GradientColors4(GradientColors4.mango),
    GradientColors4(GradientColors4.fire),
  ];
}