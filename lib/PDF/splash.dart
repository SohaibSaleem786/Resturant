
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:resturant/PDF/sdsd.dart';


class PdfGenerator{
  static late Font arFont ;

  static init()async{
    // arFont = Font.ttf( (await rootBundle.load("assets/fonts/Cairo-Bold.ttf")) );
  }

  static createPdf()async{
    String path =( await getApplicationDocumentsDirectory()).path;
    File file = File(path + "MY_PDF.pdf");

    Document pdf = Document();
    pdf.addPage(_createPage());

    Uint8List bytes = await pdf.save();
    await file.writeAsBytes(bytes);
    createImg(file.path);
    await OpenFile.open(file.path);
  }

  static Page _createPage() {
    return Page(
        textDirection: TextDirection.rtl,
        theme: ThemeData.withFont(
          // base: arFont,
        ),
        pageFormat: PdfPageFormat.roll80 ,
        build: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("Your Order is here.."),
                Table(


                    columnWidths: {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(3),
                    }, children: [
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0),
                      child: Text("Name :"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0),
                      child: Text(
                        'Sohaib Saleem',
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0),
                      child: Text("Order Id : "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0),
                      child: Text(
                        '#4jR445089r',
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0),
                      child: Text("1 Burger : "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0),
                      child: Text(
                        '450',
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0),
                      child: Text("1 large Pizza :"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0),
                      child: Text(
                        '1650',
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0),
                      child: Text("Total Balance : "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0),
                      child: Text(
                          '2100'
                      ),
                    ),
                  ]),
                ]),

              ]
            )


          );
        }
        );
  }




  static createImg(String path){
    PdfConverter.convertToImage(path) ;
  }



}