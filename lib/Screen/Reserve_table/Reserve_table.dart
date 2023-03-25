import 'package:flutter/material.dart';

class Reserve_table extends StatefulWidget {
  const Reserve_table({Key? key}) : super(key: key);

  @override
  State<Reserve_table> createState() => _Reserve_tableState();
}

class _Reserve_tableState extends State<Reserve_table> {

  final myController_name = TextEditingController();
  final myController_mobile = TextEditingController();

  String enteredText = '';

  String mob = '';

  @override
  void dispose() {
    myController_name.dispose();
    myController_mobile.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Reserve Your Table'
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,


                physics: const ScrollPhysics(),
                child: Row(

                  children: [

                    Container(
                      width: 175.0,
                      height: 175.0,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(35),
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.bottomRight,
                      // transform: Matrix4.rotationZ(0.1),
                      child: Column(
                        children: [
                          Center(child: Text("Table 1", style: TextStyle(fontSize: 25))),

                          SizedBox(height: 12,),
                          // Text('Booking now!!\n'
                          //     'Enjoy your meal'),
                          Text(
                            'Your name is: ${enteredText}',
                          ),Text(
                            'Your number: ${mob}',

                          ),
                        ],
                      ),


                    ),
                    Container(
                      width: 168.0,
                      height: 168.0,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(35),
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.bottomRight,
                      // transform: Matrix4.rotationZ(0.1),
                      child: Column(
                        children: [
                          Center(child: Text("Table 2", style: TextStyle(fontSize: 25))),

                          SizedBox(height: 21,),
                          Text('Booking now!!\n'
                              'Enjoy your meal')
                        ],
                      ),


                    ),
                    Container(
                      width: 168.0,
                      height: 168.0,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(35),
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.bottomRight,
                      // transform: Matrix4.rotationZ(0.1),
                      child: Column(
                        children: [
                          Center(child: Text("Table 3", style: TextStyle(fontSize: 25))),

                          SizedBox(height: 21,),
                          Text('Booking now!!\n'
                              'Enjoy your meal')
                        ],
                      ),


                    ),
                    Container(
                      width: 168.0,
                      height: 168.0,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(35),
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.bottomRight,
                      // transform: Matrix4.rotationZ(0.1),
                      child: Column(
                        children: [
                          Center(child: Text("Table 4", style: TextStyle(fontSize: 25))),

                          SizedBox(height: 21,),
                          Text('Booking now!!\n'
                              'Enjoy your meal')
                        ],
                      ),


                    ),
                    Container(
                      width: 168.0,
                      height: 168.0,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(35),
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.bottomRight,
                      // transform: Matrix4.rotationZ(0.1),
                      child: Column(
                        children: [
                          Center(child: Text("Table 5", style: TextStyle(fontSize: 25))),

                          SizedBox(height: 21,),
                          Text('Booking now!!\n'
                              'Enjoy your meal')
                        ],
                      ),


                    ),
                    Container(
                      width: 168.0,
                      height: 168.0,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(35),
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.bottomRight,
                      // transform: Matrix4.rotationZ(0.1),
                      child: Column(
                        children: [
                          Center(child: Text("Table 6", style: TextStyle(fontSize: 25))),

                          SizedBox(height: 21,),
                          Text('Booking now!!\n'
                              'Enjoy your meal')
                        ],
                      ),


                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(height: 22,thickness: 5),
                  Center(child: Text('Booking you table',style: TextStyle(fontSize: 31,color: Colors.white),)),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Enter your name:',style: TextStyle(fontSize: 23,color: Colors.deepOrange)),
                  TextField(
                    keyboardType: TextInputType.name,
                    controller: myController_name,
                    decoration: InputDecoration(
                      labelText: 'Name',
                            hintText: 'Enter name',
                            prefixIcon: Icon(Icons.add),
                            border: UnderlineInputBorder(),
                      // hintText: 'Enter your text here',
                    ),
                  ),


                  SizedBox(
                    height: 30,
                  ), // space between two wegit

                  Text('Enter your mobile #:',style: TextStyle(fontSize: 23,color: Colors.deepOrange)),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: myController_mobile,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        hintText: 'Enter mobile #',
                        prefixIcon: Icon(Icons.phone),
                        border: UnderlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      // validator: (value) {
                      //   return value!.isEmpty ? 'Please enter table #' : null;
                      // },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ), // space between two wegit

                  Text('Which table you want to sit there :',style: TextStyle(fontSize: 21,color: Colors.deepOrange)),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      // controller: email,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Table',
                        hintText: 'Enter Table #',
                        prefixIcon: Icon(Icons.table_bar),
                        border: UnderlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter table #' : null;
                      },
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange, // set the background color of the button
                      ),
                      onPressed: () {
                        setState(() {
                          enteredText = myController_name.text;
                          mob = myController_mobile.text;
                        });
                      },
                      child: Text('Retrieve Data'),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
