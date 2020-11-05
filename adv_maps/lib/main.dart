import 'package:adv_maps/pages/gps_access_page.dart';
import 'package:adv_maps/pages/loading_page.dart';
import 'package:adv_maps/pages/map_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
      routes: {
        'map': (_) => MapPage(),
        'loading': (_) => LoadingPage(),
        'gps_access': (_) => GpsAccessPage(),
      },
    );
  }
}