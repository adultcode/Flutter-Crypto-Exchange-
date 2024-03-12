import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/decoration.dart';
import '../../widgets/header_information.dart';
import '../../widgets/small_menu.dart';

class SmallHomePage extends StatefulWidget {
  const SmallHomePage({super.key});

  @override
  State<SmallHomePage> createState() => _SmallHomePageState();
}

class _SmallHomePageState extends State<SmallHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CLR.screen_bg,
      appBar: SmallAppbar(context),
      body: Column(
        children: [
          //HeaderInformation(context)
        ],
      ),
    );
  }
}
