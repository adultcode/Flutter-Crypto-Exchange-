import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../constant/decoration.dart';

PreferredSizeWidget SmallAppbar(BuildContext context){
  return AppBar(
    elevation: 1,

    backgroundColor: CLR.header_black,
    leadingWidth: double.infinity,
    leading: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image.asset("assets/bitcoin.png",width: 30,height: 30,),
          SizedBox(width: 10,),
          Text("BTC/USDT",style: Theme.of(context).textTheme.displayMedium,),

          SizedBox(width: 6,),
          RotationTransition(
            turns: AlwaysStoppedAnimation(-90/360),
            child: Icon(Icons.arrow_back_ios_new_sharp,color: CLR.grey_text,size: 15,),),
          SizedBox(width: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
            decoration: DCR.panel_decoration.copyWith(
                color: CLR.greenbtn_color
            ),
            child: Text("+1.4",style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white)),
          ),
          SizedBox(width: 15,),
          Text("\$72,523",style: Theme.of(context).textTheme.displayMedium!.copyWith(color: CLR.gold_color),),

        ],
      ),
    ),
  );
}