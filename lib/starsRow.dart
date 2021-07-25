import 'package:flutter/material.dart';
import 'package:flutter_application_8/star.dart';

class StarsRow extends StatelessWidget {
  final int stars;
  const StarsRow(this.stars);

  @override
  Widget build(BuildContext context) {
    var range = [1, 2, 3, 4, 5];
    var rangeOfStars = range
        .asMap()
        .entries
        .map((entry) => Star(entry.key + 1 < stars))
        .toList();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: rangeOfStars,
    );
  }
}
