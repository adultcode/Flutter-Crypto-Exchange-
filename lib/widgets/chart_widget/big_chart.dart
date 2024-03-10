import 'package:crypto_exchange/constant/screen_size.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/decoration.dart';

class BigChart extends StatelessWidget {
  const BigChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height*0.55,
      width: ScreenSize.width*0.575,
     // color: Colors.green,
      decoration: DCR.panel_decoration,
      child: Column(
        children: [

          /// header of card
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15,top: 8),
            width: ScreenSize.width*0.575,
            height: 33,
           decoration: DCR.panel_header_decoration,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Price",style: Theme.of(context).textTheme.displayLarge!.copyWith(color: CLR.gold_color),),
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
                ),
              ],
            ),
          ),
          /// body of card
        ],
      ),
    );
  }
}
