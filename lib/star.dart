import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final bool filled;
  const Star(this.filled, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.star,
        size: 20,
        color: filled ? Color.fromRGBO(252, 229, 28, 1) : Colors.grey,
      ),
    );
  }
}
