import 'package:crypto_exchange/constant/screen_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/color.dart';
import '../constant/size.dart';

Widget HeaderInfo(BuildContext context){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 12,horizontal: 15),
   // margin: EdgeInsets.symmetric(vertical: ScreenSize.height*0.01,horizontal: ScreenSize.width*0.02),
    decoration: BoxDecoration(
      color: CLR.header_black,
      borderRadius: BorderRadius.all(Radius.circular(ConstSize.card_radius))
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Image.asset("assets/bitcoin.png",width: 28,height: 28,filterQuality: FilterQuality.high,fit: BoxFit.fitWidth,),
        SizedBox(width: 5,),
        Container(
           // color: Colors.green,
            child: Text("BTC/USDT",style:Theme.of(context).textTheme.labelLarge,)),
        // Container(
        //   alignment: Alignment.bottomCenter,
        //   //  color: Colors.red,
        //     child: Text("BTC/USDT",style:TextStyle( color: Colors.white,fontSize: 18,fontFamily: 'farhang',fontWeight: FontWeight.w600),textAlign: TextAlign.center)),
         SizedBox(width: 10,),
        RotationTransition(
            turns: AlwaysStoppedAnimation(-90 / 360),
            child: Icon(Icons.arrow_back_ios_sharp,color: CLR.grey_text,size: 18,),),

        SizedBox(width: 40,),
        Column(
          children: [
            Text("69125.5",style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: ConstSize.small_text_size),),
            SizedBox(height: 4,),
            Text("+5.14%",style:  Theme.of(context).textTheme.displaySmall!.copyWith(color: CLR.greenbtn_color,fontWeight: FontWeight.w600),),
          ],
        ),
        SizedBox(width: 40,),
        Column(
          children: [
            Text("24h High",style:  Theme.of(context).textTheme.displaySmall,),
            SizedBox(height: 4,),
            Text("70102.3",style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: ConstSize.small_text_size),),

          ],
        ),
        SizedBox(width: 40,),
        Column(
          children: [
            Text("24h Volume",style:  Theme.of(context).textTheme.displaySmall,),
            SizedBox(height: 4,),
            Text("1.214.365",style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: ConstSize.small_text_size),),

          ],
        )

      ],
    ),
  );
}