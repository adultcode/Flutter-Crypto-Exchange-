import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../constant/decoration.dart';
import '../../../model/position_model.dart';
class BigPositionItem extends StatelessWidget {
  PositionModel positionModel;


  BigPositionItem({required this.positionModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(child: Container(
              padding: EdgeInsets.only(left: 5,top: 4,bottom: 4),
                decoration: BoxDecoration(
                  gradient: LinearGradient(

                    colors: [positionModel.isSell==true?CLR.greenbtn_color.withOpacity(0.7):CLR.redbtn_color.withOpacity(0.7)
                      ,Colors.transparent],
                    begin: Alignment.centerLeft,end: Alignment.centerRight
                  ),
                  border: Border(
                    left: BorderSide(
                      color: positionModel.isSell==true?CLR.greenbtn_color:CLR.redbtn_color,
                        width: 3
                    )
                  )
                ),
                child: Text(positionModel.market!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),))),
            Expanded(child: Text(positionModel.qty!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),)),
            Expanded(child: Text(positionModel.value!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),)),
            Expanded(child: Text(positionModel.price!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: CLR.gold_color),)),
            Expanded(child: Text(positionModel.unrealized!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: positionModel.isSell==true?CLR.greenbtn_color:CLR.redbtn_color),)),
      Flexible(
      //  flex: 1,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: DCR.info_decoration.copyWith(color: CLR.input_bg),
          child: Text("TP/SL", style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white.withOpacity(0.8)),),
        ),
      ),
          ],
        ),
      ),
    );
  }
}
