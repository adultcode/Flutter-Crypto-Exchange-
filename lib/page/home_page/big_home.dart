import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../widgets/header_information.dart';
import '../../widgets/header_menu.dart';

class BigHomePage extends StatefulWidget {
  const BigHomePage({super.key});

  @override
  State<BigHomePage> createState() => _BigHomePageState();
}

class _BigHomePageState extends State<BigHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CLR.screen_bg,
      body: Column(
        children: [
          /*
         show top menu of page
         */
          HeaderMenu(),
          HeaderInfo(context)
        ],
      )
    );
  }
}
