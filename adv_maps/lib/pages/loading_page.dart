import 'package:adv_maps/helpers/helpers.dart';
import 'package:adv_maps/pages/gps_access_page.dart';
import 'package:adv_maps/pages/map_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: this.checkGpsLocation(context),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Center(
                child: CircularProgressIndicator(
              strokeWidth: 2,
            ));
          }),
    );
  }

  Future checkGpsLocation(BuildContext context) async {
    // TODO: Validar permisos gps
    // TODO: Validar si el gps esta activo
    await Future.delayed(Duration(milliseconds: 100));
    Navigator.pushReplacement(context, navigateTo(context, GpsAccessPage()));
  }
}
