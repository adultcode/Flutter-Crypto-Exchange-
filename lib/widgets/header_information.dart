import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../constant/decoration.dart';
import '../constant/size.dart';

Widget HeaderInformation(BuildContext context){

  return Container(

    padding: EdgeInsets.symmetric(horizontal: ConstSize.info_horizontal_padding,
        vertical: ConstSize.info_vertical_padding),

    decoration: DCR.info_decoration,

    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        /*
        coin logo
         */
        Image.asset("assets/bitcoin.png",width: ConstSize.logo_size,
          height: ConstSize.logo_size,),
        SizedBox(width: 8,),
        /*
        trade symbol
         */
        Text("BTC/USDT",style: Theme.of(context).textTheme.labelLarge,),
        SizedBox(width: 10,),
        /*
        icon
         */
        RotationTransition(
          turns: AlwaysStoppedAnimation(-90/360),
          child: Icon(Icons.arrow_back_ios_new_sharp,color: CLR.grey_text,size: 18,),),
        SizedBox(width: 40,),
        /*
        current price
         */
        Column(
          children: [
            Text("72,120.7",style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: ConstSize.small_text_size),),
            SizedBox(height: 4,),
            Text("+5.2",style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: CLR.greenbtn_color,fontWeight: FontWeight.w600),),

          ],
        ),
        /*
        high info
         */
        SizedBox(width: 40,),
        Column(
          children: [
            Text("24h High",style: Theme.of(context).textTheme.displaySmall,),
            SizedBox(height: 4,),
            Text("73,341.5",style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: ConstSize.small_text_size),),

          ],
        ),
        /*
        volume info
         */
        SizedBox(width: 40,),
        Column(
          children: [
            Text("24h Volume",style: Theme.of(context).textTheme.displaySmall,),
            SizedBox(height: 4,),
            Text("1,351,859.5",style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: ConstSize.small_text_size),),

          ],
        ),


      ],
    ),

  );
}