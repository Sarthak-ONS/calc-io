import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String title;
  final String value;
  const CustomCard({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: const [
          BoxShadow(
            offset: Offset(
              0,
              0,
            ),
            color: Colors.black,
            blurRadius: 2,
          )
        ],
      ),
      child: Column(
        children: [
          Text(
            widget.value,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.title,
          ),
        ],
      ),
    );
  }
}
