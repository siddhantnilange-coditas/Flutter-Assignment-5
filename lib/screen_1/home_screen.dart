
import 'package:figma_ui/screen_1/search_field.dart';
import 'package:figma_ui/screen_1/video_card_list_view.dart';
import 'package:figma_ui/screen_1/bottom_feed_list_view_builder.dart';
import 'package:figma_ui/screen_2/spot_details_screen.dart';
import 'package:figma_ui/screen_3/profile_screen.dart';

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int choosedIndex = 0;

  void onItemClicked(int inputIndex) {
    setState(() {
      choosedIndex = inputIndex;
    });

    switch (inputIndex) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SpotDetails()),
        );
        break;
      case 2:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ),
        // );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body:
          // margin: const EdgeInsets.symmetric(vertical: 56, horizontal: 31),
          // margin: EdgeInsets.symmetric(vertical: 0.1 * MediaQuery.of(context).size.height, horizontal: 0.1 * MediaQuery.of(context).size.width),
          Padding(
        padding: const EdgeInsets.only(left: 25, top: 40),
        child: Column(
          children: [
            //profile photo and text
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/profile_image.jpg",
                  width: 49,
                  height: 49,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 0, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back!',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(

                      //   height: 3,
                      // ),
                      Text(
                        "Monday, 3 October",
                        style: TextStyle(color: Color.fromARGB(162, 0, 0, 0)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            // const SizedBox(
            //   height: 20,
            // ),

            const SearchField(),
            const Padding(
              padding: EdgeInsets.only(top: 15.0, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "#Health",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 169, 159, 159)),
                  ),
                  Spacer(),
                  Text(
                    "#Music",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 169, 159, 159)),
                  ),
                  Spacer(),
                  Text(
                    "#Technology",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 169, 159, 159)),
                  ),
                  Spacer(),
                  Text(
                    "#sports",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 169, 159, 159)),
                  ),
                  Spacer(),
                ],
              ),
            ),

            const VideoCardsListView(),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Short For You",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: 180,
                    height: 38,
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 75, 159, 228),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            const BottomFeedListView()
            // bottomFeed(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 45,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/icon1.png',
              ),
              color: Color.fromARGB(255, 79, 126, 236),
            ),

            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon2.png'),
              color: Color(
                  0xFF9397A0),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon3.png'),
              color: Color(
                  0xFF9397A0),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon4.png'),
              color: Color(
                  0xFF9397A0),
            ),
            label: "",
          ),
        ],
        currentIndex: choosedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: onItemClicked,

      ),
    );
  }
}
