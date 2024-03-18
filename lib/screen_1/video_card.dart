import "package:flutter/material.dart";
import "package:flutter/widgets.dart";


Widget videoCards(List<Map<String, dynamic>> videoItems, int index) {
  return SizedBox(
    
    height: 320,
    width: 280,
    
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0, left:4, right: 15.0),
      child: Card(
        color: const Color.fromARGB(255, 251, 251, 251),                    
        elevation: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                    
                  
                   Image.asset(
                        videoItems[index]['imagePath'],
                        // height: 160,
                        // width: 250,
                        fit: BoxFit.cover,
                      ),
                    
                  
                  const SizedBox(height: 12,),
                  Text(
                    videoItems[index]['title'],
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 42,
                    width: 42,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Color.fromARGB(255, 255, 255, 255),

                      image: DecorationImage(
                        image: AssetImage(videoItems[index]['personImage']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // 'Sang Dong-Min',
                        videoItems[index]['name'],
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(
                      //   height: 3,
                      // ),
                      Text(
                        // "Sep 9, 2022",
                        videoItems[index]['date'],
                        style: const TextStyle(
                            fontSize: 15, color: Color.fromARGB(162, 0, 0, 0)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 37,
                    width: 37,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      shape: BoxShape.rectangle,
                      color: const Color.fromARGB(255, 255, 255, 255),    
                      image: const DecorationImage(
                        image: AssetImage('assets/images/arrow.png'),
                        // fit: BoxFit.cover,
                      ),  
                    ),
                  ),
                ),
                
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
