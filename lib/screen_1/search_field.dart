
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, right: 20.0),
      child: Container(
        width: 520,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(238, 236, 231, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, top: 2, bottom: 2),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for article.....',
                  ),
                ),
              ),
            ),
            Container(
              width: 47,
              height: 49,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(90, 98, 235, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/Group12.png",
                  fit: BoxFit.contain, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

