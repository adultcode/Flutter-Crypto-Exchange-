import 'package:crypto_exchange/constant/size.dart';
import 'package:crypto_exchange/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/core.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../constant/color.dart';

class MarketSection extends StatelessWidget {

  bool? isSell;

  var val = 1.0;

  MarketSection({this.isSell});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          InputWidget(title: "Price",price: "72,128",symbol: "USDT",),
          SizedBox(height: 10,),
          InputWidget(title: "Quantity",price: "19",symbol: "BTC",),

          SizedBox(height: 15,),

          Container(height: 10,
          child: SfSliderTheme(
            data: SfSliderThemeData(

              thumbRadius: 7,
              thumbColor: CLR.gold_color,
              activeTickColor: Colors.transparent,
              inactiveTickColor: CLR.grey_text,
              tickSize: Size(4,4),
              tickOffset: Offset(0,-4),
              inactiveTrackHeight: 5,
              inactiveTrackColor: Colors.yellow

            ),
            child: SfSlider(
              activeColor: CLR.gold_color,
              inactiveColor: CLR.btn_border_black,
              min: 1.0,
              max: 100,
              value: 25.0, /// _val
              stepSize: 25,
              interval: 25,
            showTicks: true,
              enableTooltip: true,
              onChanged: (newvalue) {
                // _val = newvalue;
              },
            ),
          ),),
          SizedBox(height: 10,),
          InputWidget(title: "Order value",price: "145,875",symbol: "USDT",),
          SizedBox(height: 15,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSell==true?CLR.redbtn_color:CLR.greenbtn_color,
              minimumSize: Size(double.infinity,40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(ConstSize.card_radius)
              )
            ),

              onPressed: () {

          }, child: Text(isSell==true?"Sell":"Buy",
          style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white,
          fontWeight: FontWeight.w800),
          )
          )

        ],
      ),
    );
  }
}
