import "package:figma_ui/screen_1/home_screen.dart";
import "package:figma_ui/screen_2/spot_details_screen.dart";

import "package:flutter/material.dart";

void main(){

  runApp(
     const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
            // home: SpotDetails(),

     )
  );
}

// import "package:flutter/material.dart";

// void main(){

//   runApp(
//      const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//      )
//   );
// }