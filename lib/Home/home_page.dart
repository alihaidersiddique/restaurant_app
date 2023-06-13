import 'package:flutter/material.dart';

import '../CustomWidgets/custom_scaffold.dart';
import 'popular_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      index: 0,
      title: 'Baharaan\'s Kitchen',
      body: PopularItems(),
    );
  }
}
