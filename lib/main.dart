import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'view/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 2000,
        minWidth: 1650,
        defaultScale: true,
        // breakpoints: [
        //   // ResponsiveBreakpoint.resize(450, name: MOBILE),
        //   // ResponsiveBreakpoint.autoScale(800, name: TABLET),
        //   ResponsiveBreakpoint.autoScale(1000, name: TABLET),
        //   ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        //   ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        // ],
      ),
      home: HomeScreen(),
    );
  }
}
