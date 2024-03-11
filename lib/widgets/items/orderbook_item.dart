import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../model/order_model.dart';

class OrderbookItem extends StatelessWidget {

  OrderModel? orderModel;
  OrderbookItem({this.orderModel});




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Text(orderModel!.price!,style:  Theme.of(context).textTheme.displayMedium!.copyWith(color: orderModel!.isSell==true?CLR.redtext_color:CLR.greenbtn_color),)),
          Expanded(child: Text(orderModel!.volume!,style:  Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white.withOpacity(0.6)))),
          Expanded(child: Text(orderModel!.volume!,style:  Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white.withOpacity(0.6)))),
        ],
      ),
    );
  }
}
