import 'package:flutter/cupertino.dart';
import 'package:figma_ui/screen_1/video_card.dart';

class VideoCardsListView extends StatelessWidget {
  const VideoCardsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> videoItems = [
    {
      'title': "Feel the thrill on the only surf simulator in Maldives 2022",
      'name': 'Sang Dong-Min',
      'date': 'Sep 9, 2022',
      'imagePath': 'assets/images/moldives1.png',
      'personImage':'assets/images/lady.png',
    },
    {
      'title': "Hong Kong wins over Wall\nStreet CEOs after lifting strict ",
      'name': 'Pan Bong',
      'date': 'Jan 3, 2022',
      'imagePath': 'assets/images/hongkong.png',
      'personImage':'assets/images/lady2.png',
    },
  ];
    return Container(
      height: 320, 
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          // const SizedBox(width: 20,), 
          videoCards(videoItems, 0),
          // const SizedBox(width: 20, ), 
          videoCards(videoItems, 1),
        ],
      ),
    );
  }
}
