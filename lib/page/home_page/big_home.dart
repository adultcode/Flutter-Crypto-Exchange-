import 'package:flutter/material.dart';

import '../../widgets/header_menu.dart';

class BigHomePage extends StatefulWidget {
  const BigHomePage({super.key});

  @override
  State<BigHomePage> createState() => _BigHomePageState();
}

class _BigHomePageState extends State<BigHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*
         show top menu of page
         */
        HeaderMenu()
      ],
    );
  }
}
