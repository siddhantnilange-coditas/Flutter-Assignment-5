import 'package:figma_ui/screen_3/popular_feed.dart';
import 'package:flutter/cupertino.dart';
import 'package:figma_ui/screen_1/bottom_feed.dart';

class PopularFeedListView extends StatelessWidget {
  const PopularFeedListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'imagePath': "assets/images/popular1.png",
      },
      {
        'imagePath': "assets/images/popular1.png",
      },
    ];
    return Container(
      height: 148,
      // width: 248,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          popularFeed(items, 0),
          const SizedBox(
            width: 30,
          ),
          popularFeed(items, 1),
      
        ],
      ),
    );
  }
}
