import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:RoundedAppBar(),


    );
  }
}


class RoundedAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => Size.fromHeight(250);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(

      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30.0),
        bottomRight: Radius.circular(30.0),
      ),
      child: AppBar(
        leading: InkWell(
          onTap:  (){
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Container(
                width: 29,
                height: 29,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset("assets/icons/back_arrow_icon.svg",
                  ),
                )),
          ),
        ) ,
        backgroundColor:Color(0xFF2B6ED4),

        flexibleSpace: Stack(
          children: [
            Positioned(
              bottom: 37,
              left: MediaQuery.of(context).size.width * 0.35,
              //top: 118,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset("assets/icons/registration_camera_icon.svg"),
                    SizedBox(height: 17,),
                    Container(
                      height: 38,
                      width: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as per your needs
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      child: TextButton(
                          onPressed: (){},
                          child: Text("Upload",style: TextStyle(color: Colors.white),)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}