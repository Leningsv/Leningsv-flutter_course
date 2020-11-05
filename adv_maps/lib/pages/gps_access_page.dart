import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class GpsAccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Es necesario el GPS para usar esta app'),
            MaterialButton(
                child: Text("Solicitar Acceso", style: TextStyle(color: Colors.white)),
                color: Colors.black,
                shape: StadiumBorder(),
                elevation: 0,
                splashColor: Colors.transparent,
                onPressed: () async {
                  final status = await Permission.location.request();
                  print(status);
                })
          ],
        ),
      ),
    );
  }

  void requestGpsAccess(PermissionStatus status) {
    switch (status) {
      case PermissionStatus.undetermined:
        // TODO: Handle this case.
        break;
      case PermissionStatus.granted:
        // TODO: Handle this case.
        break;
      case PermissionStatus.denied:
        // TODO: Handle this case.
        break;
      case PermissionStatus.restricted:
        // TODO: Handle this case.
        break;
      case PermissionStatus.permanentlyDenied:
        openAppSettings();
        break;
    }
  }
}
