import 'package:crypto_exchange/model/order_model.dart';
import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../constant/size.dart';


class SmallOrderItem extends StatelessWidget {
  OrderModel? orderModel;


  SmallOrderItem({this.orderModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(orderModel!.price!,style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: orderModel!.isSell==false?CLR.greenbtn_color:CLR.redtext_color, fontSize: ConstSize.small_text_size
          ),),
          Text(orderModel!.amount!,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white.withOpacity(0.6),
              fontSize: ConstSize.small_text_size),),
        ],
      ),
    );
  }
}
