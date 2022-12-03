import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {

  final int number;

  const PageThree({
    required this.number,
    Key? key
  }) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.number.toString()),
      ),
    );
  }
}
