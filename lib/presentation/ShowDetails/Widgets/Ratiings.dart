import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarr extends StatelessWidget {
  final double rate;
  RatingBarr({
    super.key,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 20,
      unratedColor: Colors.grey.withOpacity(0.5),
      initialRating: rate / 2,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
