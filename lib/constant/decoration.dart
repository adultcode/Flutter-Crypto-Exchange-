import 'package:crypto_exchange/constant/size.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class DCR{

  static var panel_decoration = BoxDecoration(
    color: CLR.secondary_black,
    borderRadius: BorderRadius.all(Radius.circular(ConstSize.card_radius))
  );

  static var panel_header_decoration = BoxDecoration(
    color: CLR.header_black,
    borderRadius: BorderRadius.only(topRight: Radius.circular(ConstSize.card_radius),
    topLeft: Radius.circular(ConstSize.card_radius))
  );

  static var info_decoration = BoxDecoration(
      color: CLR.header_black,
      borderRadius: BorderRadius.all(Radius.circular(ConstSize.card_radius))
  );


}