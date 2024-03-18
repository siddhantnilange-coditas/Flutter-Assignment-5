import 'package:flutter/cupertino.dart';
import 'package:figma_ui/screen_1/bottom_feed.dart';

class BottomFeedListView extends StatelessWidget {
  const BottomFeedListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
    {
      'title': "Top Trending \nIslands in 2022",
      'imagePath': "assets/images/toptrending.png",
      'views': "40,999",
    },
    {
      'title': "China\nTourism",
      'imagePath': "assets/images/china_image.png",
      'views': "50,999",
    },
  ];
    return Container(
      height: 100, 
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          bottomFeed(items, 0),
          const SizedBox(width: 30,), 
          bottomFeed(items, 1),
   
        ],
      ),
    );
  }
}
