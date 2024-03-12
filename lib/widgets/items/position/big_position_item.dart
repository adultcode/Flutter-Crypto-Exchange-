import 'package:crypto_exchange/model/position_model.dart';
import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../constant/decoration.dart';

class BigPositionItem extends StatelessWidget {

  PositionModel positionModel;

  BigPositionItem(this.positionModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child:  Row(
        children: [
          Expanded(child: Container(

              padding: EdgeInsets.only(top: 5,bottom: 5,left: 5),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [positionModel.isSell==true?CLR.greenbtn_color.withOpacity(0.7):CLR.redbtn_color.withOpacity(0.7),
                  //Colors.transparent,
                  Colors.transparent],
                begin: Alignment.centerLeft,end: Alignment.centerRight
              ),
              border: Border(
                left: BorderSide(
                    color:positionModel.isSell==true?CLR.greenbtn_color:CLR.redbtn_color,
                    width: 3
                )
              )
            ),
              child: Text(positionModel.market!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),))),
          Expanded(child: Text(positionModel.qty!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),)),
          Expanded(child: Text(positionModel.value!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),)),
          Expanded(child: Text(positionModel.price!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: CLR.gold_color),)),
          Expanded(child: Text(positionModel.unrealized!,style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: positionModel.isSell==true?CLR.greenbtn_color:CLR.redbtn_color),)),
          Flexible(child: Container(
            padding: EdgeInsets.all(10),
              decoration: DCR.info_decoration.copyWith(color: CLR.input_bg,
              boxShadow: [
                BoxShadow(
                  color: Colors.white70.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                  
                )
              ]),
              child: Text("TP/SL",style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),))),
        ],
      ),
    );
  }
}
