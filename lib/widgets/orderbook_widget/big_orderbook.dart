import 'package:crypto_exchange/model/order_model.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/decoration.dart';
import '../../constant/screen_size.dart';
import '../../constant/size.dart';
import '../items/orderbook_item.dart';

class BigOrderBook extends StatelessWidget {

  List<Widget> buy_orders =[];
  List<Widget> sell_orders =[];

  BigOrderBook(){
    buy_orders.add(OrderbookItem(orderModel:OrderModel(price: "79,124",total: "42",volume: "142,541",isSell: false) ));
    buy_orders.add(OrderbookItem(orderModel:OrderModel(price: "79,113",total: "10",volume: "58,720",isSell: false) ));
    buy_orders.add(OrderbookItem(orderModel:OrderModel(price: "79,129",total: "124",volume: "4,951",isSell: false) ));
    buy_orders.add(OrderbookItem(orderModel:OrderModel(price: "79,104",total: "13",volume: "74,024",isSell: false) ));
    buy_orders.add(OrderbookItem(orderModel:OrderModel(price: "79,174",total: "15",volume: "5,875",isSell: false) ));

    sell_orders.add(OrderbookItem(orderModel:OrderModel(price: "79,124",total: "42",volume: "142,541",isSell: true) ));
    sell_orders.add(OrderbookItem(orderModel:OrderModel(price: "79,113",total: "10",volume: "58,720",isSell: true) ));
    sell_orders.add(OrderbookItem(orderModel:OrderModel(price: "79,129",total: "124",volume: "4,951",isSell: true) ));
    sell_orders.add(OrderbookItem(orderModel:OrderModel(price: "79,104",total: "13",volume: "74,024",isSell: true) ));
    sell_orders.add(OrderbookItem(orderModel:OrderModel(price: "79,174",total: "15",volume: "5,875",isSell: true) ));

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height*0.4+260,
      //width: ScreenSize.width*0.3, //57+37 = 94+4+1 => 99
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
          list titles
           */
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Text("Price",style:  Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white.withOpacity(0.8)),)),
                Expanded(child: Text("Amount",style:  Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white.withOpacity(0.8)))),
                Expanded(child: Text("Total",style:  Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white.withOpacity(0.8)))),
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
