import 'package:crypto_exchange/model/order_model.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';


class OrderBookItem extends StatelessWidget {
  OrderModel? orderModel;


  OrderBookItem({this.orderModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(child: Text(orderModel!.price!,style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: orderModel!.isSell==false?CLR.greenbtn_color:CLR.redtext_color),)),
          Expanded(child: Text(orderModel!.amount!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white.withOpacity(0.6)),)),
          Expanded(child: Text(orderModel!.volume!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white.withOpacity(0.6)),)),
        ],
      ),
    );
  }
}
