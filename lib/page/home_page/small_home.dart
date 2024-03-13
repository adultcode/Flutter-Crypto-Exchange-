import 'package:crypto_exchange/widgets/menu/small_menu.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/decoration.dart';
import '../../widgets/header_information.dart';
import '../../widgets/market_widget/small_market.dart';
import '../../widgets/orderbook_widget/small_orderbook.dart';

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
      appBar: app_bar(context),
      body: Column(
        children: [
          Expanded(flex: 5,  child:

          Container(
            color: CLR.secondary_black,
            margin: EdgeInsets.only(top: 3,bottom: 7),
            child: Row(
              children: [
                Expanded(child:SmallOrderBook() ),
                Expanded(child: SmallMarket()),
              ],
            ),
          )
          ),
          Expanded(flex:3,child: Container(color: Colors.redAccent,)),
        ],

      ),
    );
  }
}
