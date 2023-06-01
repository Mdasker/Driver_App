import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'login_page.dart';


class WellcomePage extends StatelessWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Color(0xff2b6ed4),
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Vector.png")
                    )
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height:20),
                  // the login button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                    },
                    color: Color(0xff2b6ed4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child:Padding(
                      padding: const EdgeInsets.only(right: 17.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Get Started", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),),
                          SizedBox(width: 70,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset("assets/icons/getStart.svg")
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
