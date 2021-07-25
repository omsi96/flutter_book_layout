import 'package:flutter/material.dart';
import 'package:flutter_application_8/Author.dart';
import 'package:flutter_application_8/AuthorRow.dart';
import 'package:flutter_application_8/Book.dart';
import 'package:flutter_application_8/starsRow.dart';

class BookDetails extends StatefulWidget {
  final Book book;
  BookDetails(this.book, {Key? key}) : super(key: key);

  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Details"),
      ),
      body: Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              widget.book.image,
              height: 354,
              width: 244,
            ),
            SizedBox(height: 15),
            Text(
              widget.book.title,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              widget.book.subtitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            StarsRow(widget.book.rating),
            SizedBox(height: 40),
            AuthorRow(Author(
                "Omar Alibrahim",
                "https://pbs.twimg.com/profile_images/1324664430072909826/Q_GI7x-N_400x400.jpg",
                "Omar Alibrahim, is an iOS developer who is passionate about teaching development ")),
            SizedBox(height: 40),
            Container(
              width: 400,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Reserve Book"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
