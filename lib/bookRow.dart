import 'package:flutter/material.dart';
import 'package:flutter_application_8/Book.dart';
import 'package:flutter_application_8/starsRow.dart';
import 'package:flutter_application_8/bookDetails.dart';

class BookRow extends StatefulWidget {
  final Book book;
  BookRow(this.book, {Key? key}) : super(key: key);

  @override
  _BookRowState createState() => _BookRowState();
}

class _BookRowState extends State<BookRow> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BookDetails(widget.book)));
      },
      child: Container(
        child: Card(
          elevation: 2,
          child: Container(
            padding: const EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  widget.book.image,
                  height: 177,
                  width: 122,
                ),
                SizedBox(height: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.book.title,
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.book.subtitle,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10),
                    StarsRow(widget.book.rating),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
