import 'package:calc_io/MyProviders/calculator_provider.dart';
import 'package:calc_io/Widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../custom_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController? _first;

  TextEditingController? _sec = TextEditingController();

  @override
  void initState() {
    _first = TextEditingController();
    _sec = TextEditingController();
    _first!.text = "0";
    _sec!.text = "0";
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _first!.dispose();
    _sec!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculateProvider>(
      builder: (context, myvalue, child) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: ListView(
            shrinkWrap: true,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: "First Number",
                textEditingController: _first,
                callback: () {
                  print(_first!.text + " is the first Number");
                  print(_sec!.text + " is the second Number");
                },
              ),
              TextButton(
                onPressed: () {
                  String a = _first!.text;
                  String b = _sec!.text;

                  _first!.text = b;
                  _sec!.text = a;
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Swap both Values",
                    ),
                    Icon(
                      Icons.swap_vert,
                    )
                  ],
                ),
              ),
              CustomTextField(
                label: "Second Number",
                textEditingController: _sec,
                callback: () {
                  print(_first!.text + " is the first Number");
                  print(_sec!.text + " is the second Number");
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  myvalue.changeValues(_first!.text, _sec!.text);
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
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
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomCard(
                    title: "XOR",
                    value: myvalue.getXor().toString(),
                  ),
                  CustomCard(
                    title: "OR",
                    value: myvalue.getOr().toString(),
                  ),
                  CustomCard(
                    title: "AND",
                    value: myvalue.getAnd().toString(),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomCard(
                    title: "ADD",
                    value: myvalue.getSum().toString(),
                  ),
                  CustomCard(
                    title: "MUL",
                    value: myvalue.getMul().toString(),
                  ),
                  CustomCard(
                    title: "SUB",
                    value: myvalue.getSub().toString(),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomCard(
                    title: "DIV",
                    value: myvalue.getdivision().toString(),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
