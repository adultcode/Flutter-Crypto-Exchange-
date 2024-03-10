import 'package:crypto_exchange/constant/screen_size.dart';
import 'package:flutter/material.dart';

class BigMarket extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height*0.3,
      width: ScreenSize.width*0.575,
      color: Colors.deepPurple,
      child: Text("BigMarket"),
    );
  }
}
