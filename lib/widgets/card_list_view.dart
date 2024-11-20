import 'package:flutter/material.dart';
import 'card.dart';

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
       height: 240, // Ensure cards are visible by giving a fixed height
       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: 5,
         itemBuilder: (context, index) => Padding(
           padding: const EdgeInsets.only(right: 15),
           child: PlaceholderCard(),
          ),
        ),
     );
  }
}