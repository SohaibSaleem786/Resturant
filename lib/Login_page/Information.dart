// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart'as http;
//
// import '../Models/userModel.dart';
//
// class Information extends StatefulWidget {
//   const Information({Key? key}) : super(key: key);
//
//   @override
//   State<Information> createState() => _InformationState();
// }
//
// class _InformationState extends State<Information> {
//
//   List<UserModel> userListModel =[];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Information'),
//           backgroundColor: Colors.deepOrange,
//         ),
//         body: Padding(
//           padding:  EdgeInsets.symmetric(horizontal: 10),
//
//           // Insert all information here...........
//               child: Expanded(
//                 child: FutureBuilder(
//                   future: getUserData(),
//                   builder: (context,snapshot) {
//                     if(userListModel.isEmpty){
//                       return
//                       Center(child: Text("Loading..."));
//                     } else {
//                     return ListView.builder(
//                       itemCount: userListModel.length,
//                       itemBuilder: (context, index) {
//                         return Card(
//                         elevation: 0,
//                         shape: RoundedRectangleBorder(
//                           side: BorderSide(
//                             // color: Theme.of(context).colorScheme.outline,
//                             color: Colors.black12,
//                           ),
//                           borderRadius: BorderRadius.all(Radius.circular(12)),
//                         ),
//                         color: Colors.deepOrange[100],
//                         child: SizedBox(
//                             width: 320,
//                             height: 270,
//                             child: Column(
//                               children: [
//                                 // Image(image: AssetImage('Images/images.jpg')),
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//
//                                 Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Table(columnWidths: {
//                                     0: FlexColumnWidth(5),
//                                     1: FlexColumnWidth(5),
//                                   }, children: [
//                                     TableRow(children: [
//                                       Padding(
//                                         padding: EdgeInsets.only(top: 5.0),
//                                         child: Text("User Id"),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsets.only(top: 5.0),
//                                         child: Text(userListModel[index]
//                                             .tusrid.toString()),
//                                       )
//                                     ]),
//                                     TableRow(children: [
//                                       Padding(
//                                         padding: EdgeInsets.only(top: 5.0),
//                                         child: Text("Name"),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsets.only(top: 5.0),
//                                         child: Text(userListModel[index]
//                                             .tusrnam
//                                             .toString()),
//                                       ),
//                                     ]),
//                                     TableRow(children: [
//                                       Padding(
//                                         padding: EdgeInsets.only(top: 5.0),
//                                         child: Text("User type"),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsets.only(top: 5.0),
//                                         child: Text(userListModel[index]
//                                             .tusrtyp
//                                             .toString()),
//                                       ),
//                                     ]),
//                                     TableRow(children: [
//                                       Padding(
//                                         padding: EdgeInsets.only(top: 5.0),
//                                         child: Text("Date "),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsets.only(top: 5.0),
//                                         child: Text(userListModel[index]
//                                             .tcrtdat
//                                             .toString()),
//                                       ),
//                                     ]),
//                                     TableRow(children: [
//                                       Padding(
//                                         padding: EdgeInsets.only(top: 5.0),
//                                         child: Text("Password "),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsets.only(top: 5.0),
//                                         child: Text(userListModel[index]
//                                             .tusrpwd
//                                             .toString()),
//                                       ),
//                                     ]),
//                                   ]),
//                                 ),
//                               ],
//                             )),
//                       );
//                     },
//                     );
//
//                   }}
//                 ),
//               ),
//
//         )
//         );
//   }
//
//   Future<List<UserModel>> getUserData() async {
//     var response = await http.get(Uri.parse('https://www.crystalsolutions.com.pk/swisscare/getUsers.php'));
//     var dataz = jsonDecode(response.body.toString());
//     // print(dataz);
//     if(response.statusCode==200){
//       userListModel.clear();
//       for(Map i in dataz){
//         userListModel.add(UserModel.fromJson(i));
//       }
//     }
//
//     return userListModel;
//   }
//
// }
