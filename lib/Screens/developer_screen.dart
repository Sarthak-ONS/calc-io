import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperScreen extends StatefulWidget {
  const DeveloperScreen({Key? key}) : super(key: key);

  @override
  State<DeveloperScreen> createState() => _DeveloperScreenState();
}

class _DeveloperScreenState extends State<DeveloperScreen> {
  final Uri _url = Uri.parse('http://github.com/Sarthak-ONS/calc-io.git');
  final Uri _gmailUrl = Uri.parse("mailto:agarwalsarthak456@gmail.com");

  Future<void> open(value) async {
    try {
      await launchUrl(
        value,
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'App Info',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This app is made for making certains calculations easy!',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
                'In coding questions, mostly questions contains bitwise calculations, so you can use this app to get bitwise answers easily, no adds, no waiting time like in websites!'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Note : In case you want us to add a new calculation, or report a bug, please raise a issue on github! or mail us at the address mentioned below!',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Developed by'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.copyright_outlined),
                  Text(
                    'Sarthak Agarwal',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    open(_url);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.table_chart_outlined,
                          color: Colors.blue,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'GitHub',
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    open(_gmailUrl);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.mail_outline_outlined,
                          color: Colors.blue,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Gmail',
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
