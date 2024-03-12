import 'package:crypto_exchange/constant/size.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../constant/decoration.dart';

class InputWidget extends StatelessWidget {


  String? title;
  String? symbol;
  String? price;

  //   Price    1234 USDT

  InputWidget({this.title, this.symbol, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),

      decoration: DCR.info_decoration.copyWith(color: CLR.input_bg),
      child: Row(
        children: [
          Expanded(child: Text(title!,style: Theme.of(context).textTheme.displaySmall,)),
          Container(
            width: 75,
            alignment: Alignment.centerRight,
            child: Text(price!,style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white),),
          ),
          Container(
            width: 50,
            alignment: Alignment.centerRight,
            child: Text(symbol!,style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
