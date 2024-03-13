import 'package:crypto_exchange/constant/screen_size.dart';
import 'package:crypto_exchange/widgets/chart_widget/big_chart.dart';
import 'package:crypto_exchange/widgets/header_information.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../widgets/menu/header_menu.dart';
import '../../widgets/history_widget/big_history.dart';
import '../../widgets/market_widget/big_market.dart';
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
          Expanded(child: Container(
            padding: EdgeInsets.symmetric(vertical: ScreenSize.height*0.01,
            horizontal: ScreenSize.width*0.02),
            child: SingleChildScrollView(

              child: Column(
                children: [

                  HeaderInformation(context),

                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Column(
                        children: [
                          /*
                          chart
                           */
                          BigChart(),
                          SizedBox(height: 10,),
                          /*
                          market
                           */
                          BigMarket()
                        ],
                      ),
                      /*
                      orderbook
                       */
                      SizedBox(width: ScreenSize.width*0.01,),
                      Expanded(child: BigOrderBook())
                    ],
                  ),
                  SizedBox(height: 15,),


                      /*
                      position panel
                       */
                  BigHostory(),
                  SizedBox(height: 10,),

                ],
              ),


            ),
          ))
        ],
      ),
    );
  }
}
