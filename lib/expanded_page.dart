import 'package:flutter/material.dart';
import 'package:row_stack_expand/stack_page.dart';

import 'expanded_page2.dart';

class ExpandedPage extends StatefulWidget {
  static const String id = "expanded_page";

  const ExpandedPage({Key? key}) : super(key: key);

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Expanded"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, StackPage.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ExpandedPage2.id);
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230,
            color: Colors.yellow,
          ),
          Container(
            height: 230,
            color: Colors.lightGreenAccent,
          ),
          Container(
            height: 230,
            color: Colors.red,
          ),
          Expanded(
              child: Container(
            height: 20,
            color: Colors.white,
          ))
        ],
      ),
    );
  }
}
