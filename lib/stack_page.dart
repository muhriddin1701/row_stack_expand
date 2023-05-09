import 'package:flutter/material.dart';
import 'package:row_stack_expand/expanded_page.dart';
import 'package:row_stack_expand/row_page.dart';

class StackPage extends StatefulWidget {
  static const String id = "stack_page";

  const StackPage({Key? key}) : super(key: key);

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, RowPage.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ExpandedPage.id);
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
        title:const Text("Stack"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: const [
            Center(
              child: Text(
                "Stack Page",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
            Center(
              child: CircularProgressIndicator(),
            ),

          ],
        ),
      ),
    );
  }
}
