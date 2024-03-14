import 'package:crypto_exchange/page/home_page/big_home.dart';
import 'package:crypto_exchange/page/home_page/small_home.dart';
import 'package:crypto_exchange/test_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'constant/color.dart';
import 'constant/screen_size.dart';
import 'constant/size.dart';

void main() {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily:'nunito' ,
        textTheme: TextTheme(

          labelLarge: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,fontSize: ConstSize.symbol_text_size),
          displaySmall: TextStyle(color: CLR.grey_text,fontWeight: FontWeight.w400,
          fontSize: ConstSize.small_text_size),

          displayMedium: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,
          fontSize: ConstSize.menu_text_size),

          displayLarge: TextStyle(color: CLR.grey_text,fontWeight: FontWeight.w400,
          fontSize: ConstSize.card_title_size)

        )
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {
    //    print("Width: ${constraints.maxWidth}");
        ScreenSize.width = constraints.maxWidth;
        ScreenSize.height = constraints.maxHeight;
        if(ScreenSize.width>ConstSize.min_width_big)
        //  return TestPage();
          return BigHomePage();
        else return SmallHomePage();
      },
    );
  }
}




















var trading =               '''
              <!-- TradingView Widget BEGIN -->
<div class="tradingview-widget-container" style="height:100%;width:100%">
  <div class="tradingview-widget-container__widget" style="height:calc(100% - 32px);width:100%"></div>
  <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-advanced-chart.js" async>
  {
  "autosize": true,
  "symbol": "NASDAQ:AAPL",
  "interval": "D",
  "timezone": "Etc/UTC",
  "theme": "dark",
  "style": "1",
  "locale": "en",
  "enable_publishing": false,
  "hide_top_toolbar": true,
  "calendar": false,
  "support_host": "https://www.tradingview.com"
}
  </script>
</div>
<!-- TradingView Widget END -->
              ''';

//     child: InAppWebView(
//
//       initialSettings: settings,
//     onWebViewCreated: (controller) {
//       controller.loadData(data: trading);
//     },
//
//
//     ),
