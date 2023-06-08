import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VehicleRegistration extends StatefulWidget {
  const VehicleRegistration({Key? key}) : super(key: key);

  @override
  State<VehicleRegistration> createState() => _VehicleRegistrationState();
}

class _VehicleRegistrationState extends State<VehicleRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset(
            "assets/icons/back_arrow_icon.svg",
          ),
        ),
        title: Text("Vehicle Information",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF424242),
          ),
        ),
      ),
    );
  }
}
