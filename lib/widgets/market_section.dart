import 'package:crypto_exchange/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../constant/color.dart';
import '../constant/screen_size.dart';
import 'input_widget.dart';

class MarketSection extends StatelessWidget {

  bool? isSell;


  MarketSection({this.isSell});

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.green,
      padding: EdgeInsets.symmetric(horizontal: 10),

      child: Column(
        children: [
          InputWidget(title: "Price",price: "72,421",symbol: "USDT"),
          SizedBox(height: 10,),
          InputWidget(title: "Quantity",price: "42",symbol: "BTC "),
          SizedBox(height: 10,),
          InputWidget(title: "Order value",price: "131,353",symbol: "USDT"),
          SizedBox(height: 15,),
          Container(
           // width: ScreenSize.width,
            height: 10,
            child: SfSliderTheme(
              data: SfSliderThemeData(
                thumbRadius: 5,
                thumbColor: CLR.gold_color,
                thumbStrokeColor: CLR.gold_color,
               activeTickColor: Colors.transparent,
               inactiveTickColor: CLR.header_black,
               activeTrackHeight: 2,
               inactiveTrackHeight: 2,
               tickSize: Size(3,3),
               tickOffset: Offset(0,-3),

              ),
              child: SfSlider(
                activeColor: CLR.gold_color,
                inactiveColor: CLR.grey_text,
                min: 1.0,
                max: 100.0,

                value: 25.0,
                showDividers: false,

                interval: 25.0,
                showTicks: true,
                stepSize: 25.0,

                enableTooltip: true,
                onChanged: (dynamic newValue){
                },
              ),
            ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSell==true?CLR.greenbtn_color:CLR.redbtn_color,
                minimumSize: Size(double.infinity, 40), // Set width to infinity
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(ConstSize.card_radius),
                ),
              ),
              onPressed: () {

          }, child: Text(isSell==true?"Sell":"Buy",style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white,
          fontWeight: FontWeight.w800),))
        ],
      ),
    );
  }
}

