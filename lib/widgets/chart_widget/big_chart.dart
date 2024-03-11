import 'package:crypto_exchange/constant/screen_size.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/decoration.dart';
import '../../constant/size.dart';

class BigChart extends StatelessWidget {
  const BigChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height*0.4,
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
                    Text("Price",style: Theme.of(context).textTheme.displayLarge!.copyWith(

                        color: CLR.gold_color
                    ),),
                    Container(height: 2,width: 25,color: CLR.gold_color,)
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Depth",style: Theme.of(context).textTheme.displayLarge,),
                    Container(height: 2,width: 25,color: Colors.transparent,)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
