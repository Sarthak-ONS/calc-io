import 'package:flutter/material.dart';

class AlphabetCard extends StatelessWidget {
  const AlphabetCard(
      {Key? key, required this.title, required this.start, required this.end})
      : super(key: key);

  final String title;
  final String start;

  final String end;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        children: [
          Text(start),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(end),
        ],
      ),
    );
  }
}
