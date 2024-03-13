import 'package:crypto_exchange/model/order_model.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/decoration.dart';
import '../../constant/screen_size.dart';
import '../../constant/size.dart';
import '../items/orderbook/orderbook_item.dart';

class BigOrderBook extends StatelessWidget {

  List<Widget> buy_orders =[];
  List<Widget> sell_orders =[];

  BigOrderBook(){

    buy_orders.add(OrderBookItem(orderModel: OrderModel(price: "72,127",amount: "127",volume: "1,872,214",isSell: false),));
    buy_orders.add(OrderBookItem(orderModel: OrderModel(price: "72,047",amount: "32",volume: "35,488,158",isSell: false),));
    buy_orders.add(OrderBookItem(orderModel: OrderModel(price: "71,520",amount: "1,842",volume: "82,841",isSell: false),));
    buy_orders.add(OrderBookItem(orderModel: OrderModel(price: "73,852",amount: "12",volume: "14,821",isSell: false),));
    buy_orders.add(OrderBookItem(orderModel: OrderModel(price: "70,412",amount: "982",volume: "42,841",isSell: false),));
    buy_orders.add(OrderBookItem(orderModel: OrderModel(price: "69,412",amount: "825",volume: "11,646",isSell: false),));
    buy_orders.add(OrderBookItem(orderModel: OrderModel(price: "72,047",amount: "32",volume: "35,488,158",isSell: false),));


    sell_orders.add(OrderBookItem(orderModel: OrderModel(price: "72,127",amount: "127",volume: "1,872,214",isSell: true),));
    sell_orders.add(OrderBookItem(orderModel: OrderModel(price: "72,047",amount: "32",volume: "35,488,158",isSell: true),));
    sell_orders.add(OrderBookItem(orderModel: OrderModel(price: "71,520",amount: "1,842",volume: "82,841",isSell: true),));
    sell_orders.add(OrderBookItem(orderModel: OrderModel(price: "73,852",amount: "12",volume: "14,821",isSell: true),));
    sell_orders.add(OrderBookItem(orderModel: OrderModel(price: "72,432",amount: "1,842",volume: "25,774",isSell: true),));
    sell_orders.add(OrderBookItem(orderModel: OrderModel(price: "74,980",amount: "134",volume: "75,366",isSell: true),));
    sell_orders.add(OrderBookItem(orderModel: OrderModel(price: "72,047",amount: "32",volume: "35,488,158",isSell: true),));

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstSize.market_height+ConstSize.chart_height+10,
      //height: ScreenSize.height*0.4+270,
     // width: ScreenSize.width*0.37,
      decoration: DCR.panel_decoration,
      child: Column(
        children: [
          /*
          header
           */
          Container(
            alignment: Alignment.centerLeft,
            padding: ConstSize.panel_header_padding,
            width: ScreenSize.width*0.57,
            decoration: DCR.panel_header_decoration,
            height: 35,
            child: Row(
              children: [
                /*
                price
                 */
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Order books",style: Theme.of(context).textTheme.displayLarge!.copyWith(

                        color: CLR.gold_color
                    ),),
                    Container(height: 2,width: 50,color: CLR.gold_color,)
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recent trades",style: Theme.of(context).textTheme.displayLarge,),
                    Container(height: 2,width: 25,color: Colors.transparent,)
                  ],
                )
              ],
            ),
          ),

          /*
          list title
           */

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: Text("Price(USDT)",style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white.withOpacity(0.8)),)),
                Expanded(child: Text("Amount",style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white.withOpacity(0.8)),)),
                Expanded(child: Text("Volume",style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white.withOpacity(0.8)),)),
              ],
            ),
          ),

          ...buy_orders,
          SizedBox(height: 15,),
          ...sell_orders


        ],
      ),
    );
  }
}
