import 'package:crypto_exchange/constant/screen_size.dart';
import 'package:crypto_exchange/model/position_model.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/decoration.dart';
import '../../constant/size.dart';
import '../items/position_item/position_big_item.dart';

class BigHistory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstSize.chart_height,
      // height: ScreenSize.height*0.4,
      width: ScreenSize.width*0.96,
      decoration: DCR.panel_decoration,
      child: Column(
        children: [
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
                    Container(height: 2,width: 70,color: CLR.gold_color,)
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
          SizedBox(height: 3,),
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
          Container(
            height: 0.4,
            width:ScreenSize.width*0.96 ,
            color: Colors.white54,
          ),
          BigPositionItem(positionModel: PositionModel(price: "72,421",market: "BTC/USDT",qty: "0.12",unrealized: "+12.4%",value: "72,531",isSell: true),),
          BigPositionItem(positionModel: PositionModel(price: "56,683",market: "BTC/USDT",qty: "12.5",unrealized: "-23.7%",value: "56,871",isSell: false),),
        ],
      ),
    );
  }
}
