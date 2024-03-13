import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/decoration.dart';
import '../../constant/size.dart';

PreferredSizeWidget app_bar(BuildContext context){
  return AppBar(
    elevation: 1,
    backgroundColor: CLR.header_black,
    leadingWidth: double.infinity,
    leading: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [

          Image.asset("assets/bitcoin.png",width: ConstSize.logo_size,height: ConstSize.logo_size,),
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
            child: Text("+2.8%",style: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: Colors.white
            ),),
          ),
          SizedBox(width: 15,),
          Text("72,248",style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: CLR.gold_color
          ),)

        ],
      ),
    ),
  );
}