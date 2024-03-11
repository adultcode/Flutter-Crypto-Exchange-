import 'package:crypto_exchange/constant/size.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';

class InputWidget extends StatelessWidget {

  String? title;
  String? symbol;
  String? price;

  InputWidget({this.title, this.price,this.symbol});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 9),
      decoration: BoxDecoration(
         // color: CLR.screen_bg,
          color: Color(0xff232427),

          borderRadius: BorderRadius.all(Radius.circular(ConstSize.card_radius))
      ),
      child: Row(
        children: [
          Expanded(child: Text(title!,style:  Theme.of(context).textTheme.displaySmall!.copyWith(),)),
          Container(
              width: 70,
              alignment: Alignment.centerRight,
              child: Text(price!,style:  Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white),)),
          SizedBox(width: 15,),
          Container(
              width: 40,
              alignment: Alignment.centerRight,
              child: Text(symbol!,style:  Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white),)),
        ],
      ),
    );
  }
}
