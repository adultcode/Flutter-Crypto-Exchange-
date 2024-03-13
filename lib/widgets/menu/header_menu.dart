import 'package:crypto_exchange/constant/screen_size.dart';
import 'package:crypto_exchange/constant/size.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';


class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width,
      padding: EdgeInsets.symmetric(
        vertical: ScreenSize.height*0.02,
        horizontal: ScreenSize.width*0.02
      ),

      color: CLR.secondary_black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /*
          logo
           */
          Expanded(child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset("assets/logo.png",
              width: ConstSize.logo_size,
              height: ConstSize.logo_size,),
          )),

          /*
          menu items
           */
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Markets",style: Theme.of(context).textTheme.displayMedium,),
              Text("Markets",style: Theme.of(context).textTheme.displayMedium),
              Text("Markets",style: Theme.of(context).textTheme.displayMedium),
            ],
          )),

          /*
          register button
           */
          Expanded(child:  Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
               // width: ConstSize.register_btn_width,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: ConstSize.btn_vertical_padding,
                      horizontal: ConstSize.btn_horizontal_padding),
                  decoration: BoxDecoration(
                      color: CLR.header_black,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                          color: CLR.btn_border_black,width: 3
                      )
                  ),
                  child: Text("Register",style: Theme.of(context).textTheme.displayMedium,),
                ),
              )
            ],
          )
          )
        ],
      ),
    );
  }
}
