import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../constant/screen_size.dart';
import '../constant/size.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width,
      padding: EdgeInsets.symmetric(
          vertical: ScreenSize.height * 0.02,
          horizontal: ScreenSize.width * 0.02),
      color: CLR.secondary_black,
      // color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              "assets/logo.png",
              width: ConstSize.logo_size,
              height: ConstSize.logo_size,
            ),
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Markets",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                "Markets",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                "Markets",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          )),
          Expanded(
              child: Container(
                  width: 50,
                  // color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                          decoration: BoxDecoration(
                            color: CLR.header_black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(17)),
                              border: Border.all(
                                color: CLR.btn_border_black,
                                width: 2
                              )),


                          child: Text("Register",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  ))
                    ],
                  )))
        ],
      ),
    );
  }
}
