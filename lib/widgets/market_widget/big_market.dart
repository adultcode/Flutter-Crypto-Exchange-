import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/decoration.dart';
import '../../constant/screen_size.dart';
import '../../constant/size.dart';
import '../market_section.dart';

class BigMarket extends StatelessWidget {
  const BigMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstSize.market_height,
      width: ScreenSize.width*0.6,
      decoration: DCR.panel_decoration,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: ConstSize.panel_header_padding,
            width: ScreenSize.width*0.6,
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
                    Text("Spot",style: Theme.of(context).textTheme.displayLarge!.copyWith(

                        color: CLR.gold_color
                    ),),
                    Container(height: 2,width: 25,color: CLR.gold_color,)
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Future",style: Theme.of(context).textTheme.displayLarge,),
                    Container(height: 2,width: 25,color: Colors.transparent,)
                  ],
                )
              ],
            ),
          ),

          /*
          order buttons
           */
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: MarketSection(isSell: true,)),
              SizedBox(width: 10,),
              Expanded(child: MarketSection(isSell: false,)),
            ],
          )
        ],
      ),
    );
  }
}
