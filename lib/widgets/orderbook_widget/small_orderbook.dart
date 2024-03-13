import 'package:crypto_exchange/model/order_model.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/decoration.dart';
import '../../constant/screen_size.dart';
import '../../constant/size.dart';
import '../items/orderbook/orderbook_item.dart';
import '../items/orderbook/small_order_item.dart';

class SmallOrderBook extends StatelessWidget {

  List<Widget> buy_orders =[];
  List<Widget> sell_orders =[];

  SmallOrderBook(){

    buy_orders.add(SmallOrderItem(orderModel: OrderModel(price: "72,127",amount: "127",volume: "1,872,214",isSell: false),));
    buy_orders.add(SmallOrderItem(orderModel: OrderModel(price: "72,047",amount: "32",volume: "35,488,158",isSell: false),));
    buy_orders.add(SmallOrderItem(orderModel: OrderModel(price: "71,520",amount: "1,842",volume: "82,841",isSell: false),));
    buy_orders.add(SmallOrderItem(orderModel: OrderModel(price: "73,852",amount: "12",volume: "14,821",isSell: false),));
    buy_orders.add(SmallOrderItem(orderModel: OrderModel(price: "70,412",amount: "982",volume: "42,841",isSell: false),));
    buy_orders.add(SmallOrderItem(orderModel: OrderModel(price: "69,412",amount: "825",volume: "11,646",isSell: false),));
    buy_orders.add(SmallOrderItem(orderModel: OrderModel(price: "72,047",amount: "32",volume: "35,488,158",isSell: false),));


    sell_orders.add(SmallOrderItem(orderModel: OrderModel(price: "72,127",amount: "127",volume: "1,872,214",isSell: true),));
    sell_orders.add(SmallOrderItem(orderModel: OrderModel(price: "72,047",amount: "32",volume: "35,488,158",isSell: true),));
    sell_orders.add(SmallOrderItem(orderModel: OrderModel(price: "71,520",amount: "1,842",volume: "82,841",isSell: true),));
    sell_orders.add(SmallOrderItem(orderModel: OrderModel(price: "73,852",amount: "12",volume: "14,821",isSell: true),));
    sell_orders.add(SmallOrderItem(orderModel: OrderModel(price: "72,432",amount: "1,842",volume: "25,774",isSell: true),));
    sell_orders.add(SmallOrderItem(orderModel: OrderModel(price: "74,980",amount: "134",volume: "75,366",isSell: true),));
    sell_orders.add(SmallOrderItem(orderModel: OrderModel(price: "72,047",amount: "32",volume: "35,488,158",isSell: true),));

  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
      //  height: ConstSize.market_height+ConstSize.chart_height+10,
        //height: ScreenSize.height*0.4+270,
        // width: ScreenSize.width*0.37,
        decoration: DCR.panel_decoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
      
      
            /*
            list title
             */
      
           // SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text("Price(USDT)",style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white.withOpacity(0.8),
                  fontSize: ConstSize.small_text_size),),
                   Text("Amount",style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white.withOpacity(0.8),
                      fontSize: ConstSize.small_text_size),),
                ],
              ),
            ),
      
             ...buy_orders,
             SizedBox(height: 15,),
             ...sell_orders
      
      
          ],
        ),
      ),
    );
  }
}
