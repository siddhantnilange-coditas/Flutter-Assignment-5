import "package:figma_ui/screen_1/home_screen.dart";
import "package:figma_ui/screen_3/popular_from_list_view_builder.dart";
import "package:flutter/material.dart";
import 'package:figma_ui/screen_2/spot_details_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
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
    // TODO: implement build

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 26),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/eily_byers.png",
                      width: 49,
                      height: 49,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 9, left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Elly Byers',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                fontFamily: "Gellix"),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Author & Writer",
                            style: TextStyle(
                                color: Color.fromARGB(162, 0, 0, 0),
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 109,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color.fromRGBO(84, 116, 253, 1),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 13, left: 22, right: 22, bottom: 10),
                        child: Text(
                          "Following",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    "Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..",
                    style: TextStyle(
                        color: Color.fromRGBO(58, 59, 63, 0.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Gellix"),
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Container(
                  width: 340,
                  height: 95,
                  padding: const EdgeInsets.only(
                      left: 27, top: 26, right: 27, bottom: 26),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color.fromRGBO(25, 32, 45, 1),
                  ),
                  child: Row(
                    children: [
                      const Column(
                        children: [
                          Text(
                            "54.21k",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 1,
                        height: 38,
                        color: const Color.fromRGBO(193, 212, 249, 1),
                      ),
                      const Spacer(),
                      const Column(
                        children: [
                          Text(
                            "21.1k",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 1,
                        height: 38,
                        color: const Color.fromRGBO(193, 212, 249, 1),
                      ),
                      const Spacer(),
                      const Column(
                        children: [
                          Text(
                            "36.40k",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //posts
                const SizedBox(
                  height: 20,
                ),

                //Elly's posts
                const Row(
                  children: [
                    Text(
                      "Elly's Posts",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 180,
                      height: 45,
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
                const SizedBox(
                  width: 40,
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 99, 96, 96),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/irans_raging.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      child:  Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "News: Politics",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                              "Iran's raging protests\nFifth Iranian paramilitary me...",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/calender.png', height: 35, width: 35,),
                                // SizedBox(width: 3,),
                                const Text("16th May", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),
                                // Spacer(),
                                const SizedBox(width: 12,),
                                Image.asset('assets/images/clock.png', height: 30, width: 30,),
                                const Text("9 : 32 am", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 99, 96, 96),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/putins_post.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      
                      child:  Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "News: Politics",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                              "Iran's raging protests\nFifth Iranian paramilitary me...",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/calender.png', height: 35, width: 35,),
                                // SizedBox(width: 3,),
                                const Text("11th May", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),
                                // Spacer(),
                                const SizedBox(width: 12,),
                                Image.asset('assets/images/clock.png', height: 30, width: 30,),
                                const Text("10 : 15 am", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                 const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text("Popular From Elly", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                    SizedBox(height: 15,),
              
                    PopularFeedListView(),
                    
                  ],
                )
              ],
            ),
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/icon1.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/icon2.png"),
            ),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/icon3.png"),
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/icon4.png")),
            label: 'Profile',
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
