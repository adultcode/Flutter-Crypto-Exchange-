import 'package:crypto_exchange/model/position_model.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/decoration.dart';
import '../../constant/screen_size.dart';
import '../../constant/size.dart';
import '../items/position/big_position_item.dart';


class BigHostory extends StatelessWidget {
  const BigHostory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstSize.chart_height,
      // height: ScreenSize.height*0.4,
      width: ScreenSize.width*0.96,
      decoration: DCR.panel_decoration,
      child: Column(
        children: [
          /*
          header
           */
          Container(
            alignment: Alignment.centerLeft,
            padding: ConstSize.panel_header_padding,
            width: ScreenSize.width*0.96,
            decoration: DCR.panel_header_decoration,
            height: 35,
            child: Row(
              children: [
                /*
                price
                 */
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Open orders",style: Theme.of(context).textTheme.displayLarge!.copyWith(

                        color: CLR.gold_color
                    ),),
                    Container(height: 2,width: 60,color: CLR.gold_color,)
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Order history",style: Theme.of(context).textTheme.displayLarge,),
                    Container(height: 2,width: 25,color: Colors.transparent,)
                  ],
                )
              ],
            ),
          ),
          /*
          title
           */

          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: Text("Market",style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white.withOpacity(0.8)),)),
                Expanded(child: Text("QTY",style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white.withOpacity(0.8)),)),
                Expanded(child: Text("Value",style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white.withOpacity(0.8)),)),
                Expanded(child: Text("Entry price",style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white.withOpacity(0.8)),)),
                Expanded(child: Text("Unrealized P&L",style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white.withOpacity(0.8)),)),
                Expanded(child: Text("TP/SL",style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white.withOpacity(0.8)),)),
              ],
            ),
          ),
          SizedBox(height: 10,),

          BigPositionItem(PositionModel(isSell: true,value: "78,126",unrealized: "+12.2%",qty: "1.4",market: "BTC/USDT",
          price: "72,684")),

          BigPositionItem(PositionModel(isSell: false,value: "77,681",unrealized: "-4.5%",qty: "0.6",market: "BTC/USDT",
              price: "72,820")),

        ],
      ),
    );
  }
}
