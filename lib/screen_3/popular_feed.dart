import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget popularFeed(List<Map<String, dynamic>> items, int index) {

  return  SizedBox(
    // mainAxisAlignment: ,
    // height: 143,
    width: 248,
    child: Padding(
      padding: EdgeInsets.only(top: 0.0, right: 0),
      child: Card(
        color: Color.fromARGB(255, 255, 255, 255),                    
        elevation: 2,
        child: Container(
          decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(items[index]['imagePath']),
                    fit: BoxFit.cover,
                  ),
                ),
        ),
       
      ),
    ),
  );
}
