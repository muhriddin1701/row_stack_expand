import 'package:flutter/material.dart';

import 'expanded_page.dart';

class ExpandedPage2 extends StatefulWidget {
  static const String id = "expanded_page2";

  const ExpandedPage2({Key? key}) : super(key: key);

  @override
  State<ExpandedPage2> createState() => _ExpandedPage2State();
}

class _ExpandedPage2State extends State<ExpandedPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Expanded 2"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, ExpandedPage.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            color: Colors.purpleAccent,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
