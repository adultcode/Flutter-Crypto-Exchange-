import 'package:crypto_exchange/constant/screen_size.dart';
import 'package:flutter/material.dart';

class  BigOrderBook extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height*0.55,
      width: ScreenSize.width*0.375,
      color: Colors.blueAccent,
      child: Text("BigOrderBook"),
    );
  }
}
