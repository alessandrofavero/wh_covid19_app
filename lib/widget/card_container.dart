import 'package:flutter/material.dart';
import 'package:wh_covid19/widget/reusable_card.dart';

class CardContainer extends StatelessWidget {

  /// Title for the container
  final String title;
  /// List of ReusableCard to be displayed
  final List<ReusableCard> cards;

  CardContainer({this.title, this.cards});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 22),
            ),
          ),
          cardsLayout(),
        ],
      ),
    );
  }

  // Generate the layout of the cards based on the qty of cards
  // Allowed: 2 cards, 3 cards, 4 cards
  Widget cardsLayout() {
    switch (cards.length) {
      case 2:
        return Row(
          children: cards,
        );
        break;
      case 3:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[cards[0]],
            ),
            Row(
              children: cards.sublist(1, 3),
            )
          ],
        );
        break;
      case 4:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children:cards.sublist(0,2),
            ),
            Row(
              children: cards.sublist(2, 4),
            )
          ],
        );
        break;
      default:
        return Container();
    }
  }
}
