import 'package:flutter/material.dart';

Widget bottomFeed(List<Map<String, dynamic>> items, int index) {

  return SizedBox(
    // mainAxisAlignment: ,
    height: 88,
    width: 220,
    child: Padding(
      padding: const EdgeInsets.only(top: 0.0, right: 0),
      child: Card(
        color: const Color.fromARGB(255, 255, 255, 255),                    
        elevation: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: Row(
                children: [
                  Padding(
                    padding:  const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                   
                        
                        image: DecorationImage(
                          image: AssetImage(items[index]['imagePath']),                            
                        ),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // 'Top trending Is\nlands in 2022',
                          items[index]['title'],
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                     
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          items[index]['views'],
                          style: const TextStyle(
                              fontSize: 12, color: Color.fromARGB(162, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(width: 10,),
                
                  
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
