import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {

  final int number;

  const PageTwo({
    required this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(number.toString()),
    );
  }
}
