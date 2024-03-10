import 'package:crypto_exchange/widgets/market_widget/big_market.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/screen_size.dart';
import '../../widgets/chart_widget/big_chart.dart';
import '../../widgets/header_information.dart';
import '../../widgets/header_menu.dart';
import '../../widgets/orderbook_widget/big_orderbook.dart';

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

          Expanded(
          //  padding: EdgeInsets.symmetric(vertical: ScreenSize.height*0.01,horizontal: ScreenSize.width*0.02),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: ScreenSize.height*0.01,horizontal: ScreenSize.width*0.02),
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    HeaderInfo(context),
                    SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(children: [
                          BigChart(),
                          SizedBox(height: 10,),
                          BigMarket(),

                        ],),

                        SizedBox(width: ScreenSize.width*0.01,),
                        BigOrderBook(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
