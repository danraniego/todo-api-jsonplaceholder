import 'package:flutter/material.dart';
import 'package:flutter_ui/colors.dart';
import 'package:flutter_ui/custom_appbar.dart';

import 'page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with SingleTickerProviderStateMixin {

  String? text;

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI'),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(child: Text('Tab One')),
            Tab(child: Text('Tab Two'))
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
             CustomAppBar(),
             Container(
              child: ListTile(
                title: const Text('List Item 1'),
                onTap: () {

                },
              ),
            )
          ]
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(child: Icon(Icons.home)),
          Center(child: Icon(Icons.account_circle))
        ],
      ),
      bottomNavigationBar: Container(
        height: 40,
        child: ElevatedButton(
          child: Text('Update Text'),
          onPressed: () async {

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PageTwo(number: 1)
                )
            );

          },
        ),
      ),
    );
  }
}
