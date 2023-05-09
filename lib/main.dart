import 'package:flutter/material.dart';
import 'package:row_stack_expand/row_page.dart';
import 'package:row_stack_expand/stack_page.dart';

import 'expanded_page2.dart';
import 'expanded_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id:(context)=>const HomePage(),
        RowPage.id:(context)=>const RowPage(),
        StackPage.id:(context)=>const StackPage(),
        ExpandedPage.id:(context)=>const ExpandedPage(),
        ExpandedPage2.id:(context)=>const ExpandedPage2(),
      },
    );
  }
}


