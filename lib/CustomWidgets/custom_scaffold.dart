import 'package:flutter/material.dart';

import '../global.dart';
import 'custom_bottom_appbar.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key,
    required this.title,
    required this.body,
    required this.index,
  });
  final String title;
  final Widget body;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: body,
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        foregroundColor: secondaryColor,
        shape: CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(
        index: index,
      ),
    );
  }
}
