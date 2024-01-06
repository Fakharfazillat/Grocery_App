import 'package:flutter/material.dart';
import 'utils.dart';

// ignore: must_be_immutable
class item extends StatelessWidget {
  String text;
  String price;
  String url;
  item({required this.text, required this.price, required this.url});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vspace,
        Image.asset(url),
        vspace,
        vspace,
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        Row(
          children: [
            Text(
              price,
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            hspace,
            hspace,
            InkWell(
              child: Icon(
                Icons.add_circle,
                color: green,
                size: 45,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
