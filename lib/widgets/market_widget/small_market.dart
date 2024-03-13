import 'package:crypto_exchange/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';
import '../small_input.dart';

class SmallMarket extends StatelessWidget {
  const SmallMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            children: [
              Expanded(
                  child: Container(
                     alignment: Alignment.center,
                     padding: EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                     decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(ConstSize.card_radius),
                        bottomLeft: Radius.circular(ConstSize.card_radius),
                     )
                    ),
                     child:  Text("Buy",style: Theme.of(context).textTheme.displayMedium,),)
              ),
              SizedBox(width: 5,),
              Expanded(child:  Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                decoration: BoxDecoration(
                    color: CLR.greenbtn_color,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(ConstSize.card_radius),
                      bottomRight: Radius.circular(ConstSize.card_radius),
                    )
                ),
                child:  Text("Buy",style: Theme.of(context).textTheme.displayMedium,),)
              ),
            ],
          ),

          /*
          inputs
           */
       //   SizedBox(height: 20,),
          SmallInputWidget(title: "BTC",price: "75,578",),
        //  SizedBox(height: 20,),
          SmallInputWidget(title: "Amount",price: "0.0021",),
        //  SizedBox(height: 15,),
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

            SmallInputWidget(title: "Value",price: "42,124",),
         //   SizedBox(height: 15,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: CLR.greenbtn_color,
                  minimumSize: Size(double.infinity,40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(ConstSize.card_radius)
                  )
              ),

              onPressed: () {

              }, child: Text("Sell",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white,
                fontWeight: FontWeight.w800),
          )
          )

        ],
      ),
    );
  }
}
