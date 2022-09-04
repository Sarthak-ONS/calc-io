import 'package:calc_io/MyProviders/alphabets_sum.dart';
import 'package:calc_io/Widgets/alphabets_order.dart';
import 'package:calc_io/custom_text_field.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class AlphabetSumScreen extends StatefulWidget {
  const AlphabetSumScreen({Key? key}) : super(key: key);

  @override
  State<AlphabetSumScreen> createState() => _AlphabetSumScreenState();
}

class _AlphabetSumScreenState extends State<AlphabetSumScreen> {
  TextEditingController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AlphabetsProvider>(
      builder: (context, myvalue, child) {
        return Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              children: [
                CustomTextField(
                  textEditingController: _controller,
                  label: "Please enter a word",
                  isNumber: false,
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    myvalue.changeValue(_controller!.text);
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Results',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(myvalue.str!.length.toString()),
                  subtitle: const Text("Length"),
                ),
                ListTile(
                  title: Text(myvalue.getSum().toString()),
                  subtitle: const Text("Straight Alphabetical Sum"),
                ),
                ListTile(
                  title: Text(myvalue.getReverseSum().toString()),
                  subtitle: const Text("Reverse Alphabetical Sum"),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FloatingActionButton.extended(
                  backgroundColor: Colors.blue,
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.grade_sharp),
                      Text('Show Chart'),
                    ],
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      enableDrag: true,
                      builder: (context) => const AlphabetsOrder(),
                    );
                  },
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
