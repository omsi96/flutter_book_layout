import 'package:flutter/material.dart';
import 'package:flutter_application_8/Author.dart';
import 'package:flutter_application_8/Book.dart';
import 'package:flutter_application_8/starsRow.dart';
import 'package:flutter_application_8/bookDetails.dart';

class AuthorRow extends StatefulWidget {
  final Author author;
  AuthorRow(this.author, {Key? key}) : super(key: key);

  @override
  _AuthorRowState createState() => _AuthorRowState();
}

class _AuthorRowState extends State<AuthorRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.all(4),
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.network(
                widget.author.image,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.author.name,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  widget.author.description,
                ),
              ],
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
