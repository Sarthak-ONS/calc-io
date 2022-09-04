import 'package:calc_io/Widgets/alphabet_card.dart';
import 'package:flutter/material.dart';

class AlphabetsOrder extends StatelessWidget {
  const AlphabetsOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        physics: const BouncingScrollPhysics(),
        children: [
          const Text(
            "Alphabets Order",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              AlphabetCard(title: 'A', start: "1", end: "26"),
              AlphabetCard(title: 'B', start: "2", end: "25"),
              AlphabetCard(title: 'C', start: "3", end: "24"),
              AlphabetCard(title: 'D', start: "4", end: "23"),
              AlphabetCard(title: 'E', start: "5", end: "22"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              AlphabetCard(title: 'F', start: "6", end: "21"),
              AlphabetCard(title: 'G', start: "7", end: "20"),
              AlphabetCard(title: 'H', start: "8", end: "19"),
              AlphabetCard(title: 'I', start: "9", end: "18"),
              AlphabetCard(title: 'J', start: "10", end: "17"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              AlphabetCard(title: 'K', start: "11", end: "16"),
              AlphabetCard(title: 'L', start: "12", end: "15"),
              AlphabetCard(title: 'M', start: "13", end: "14"),
              AlphabetCard(title: 'N', start: "14", end: "13"),
              AlphabetCard(title: 'O', start: "15", end: "12"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              AlphabetCard(title: 'P', start: "16", end: "11"),
              AlphabetCard(title: 'Q', start: "17", end: "10"),
              AlphabetCard(title: 'R', start: "18", end: "19"),
              AlphabetCard(title: 'S', start: "19", end: "8"),
              AlphabetCard(title: 'T', start: "20", end: "7"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              AlphabetCard(title: 'U', start: "21", end: "6"),
              AlphabetCard(title: 'V', start: "22", end: "5"),
              AlphabetCard(title: 'W', start: "23", end: "4"),
              AlphabetCard(title: 'X', start: "24", end: "3"),
              AlphabetCard(title: 'Y', start: "25", end: "2"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              AlphabetCard(title: 'Z', start: "26", end: "1"),
            ],
          ),
        ],
      ),
    );
  }
}
