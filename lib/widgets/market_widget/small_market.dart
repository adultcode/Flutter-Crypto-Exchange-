import 'package:crypto_exchange/widgets/input/small_input.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';

class SmallMarket extends StatelessWidget {
  const SmallMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /*
          buttons
           */
          Row(
            children: [
              Expanded(child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                decoration: BoxDecoration(
                  color: CLR.input_bg,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(ConstSize.card_radius),
                    bottomLeft: Radius.circular(ConstSize.card_radius),

                  )
                ),
                child: Text("Sell",
                style: Theme.of(context).textTheme.displayMedium,),
              )
              ),
              SizedBox(width: 8,),

              Expanded(child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                decoration: BoxDecoration(
                    color: CLR.greenbtn_color,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(ConstSize.card_radius),
                      bottomRight: Radius.circular(ConstSize.card_radius),

                    )
                ),
                child: Text("Buy",
                  style: Theme.of(context).textTheme.displayMedium,),
              )
              )
            ],
          ),

          /*
          inputs
           */

          SmallInputWidget(title: "BTC",price: "75,124",),
          SmallInputWidget(title: "Amount",price: "0.041",),
          Container(
            height: 40,
            width: double.infinity,
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
            ),
          ),
          SmallInputWidget(title: "Value",price: "12,024",),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: CLR.greenbtn_color,
                  minimumSize: Size(double.infinity,40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(ConstSize.card_radius)
                  )
              ),

              onPressed: () {

              }, child: Text("Buy",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white,
                fontWeight: FontWeight.w800),
          )
          )

        ],
      ),
    );
  }
}
