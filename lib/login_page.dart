import 'package:driver_app/registration_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // String email;
  // String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 100),
              width: double.infinity,
              height: 325,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/login_page_image.png"),
                    fit: BoxFit.cover),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Enter your mobile number",
                    style: TextStyle(
                      fontSize: 20,

                    ),
                  ),
                  SizedBox(height:10),
                  inputFile(hintext: "Enter a mobile number"),
                  SizedBox(
                    height: 15,
                  ),
                  inputFile(hintext: "password", obscureText: true, ),
                  Row(
                    children: <Widget>[

                      Checkbox(

                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: remember, onChanged: (value) {
                        // setState(() {
                        //   remember = value;
                        // });
                      },
                      ),
                      Text("Remember Me",
                        style: TextStyle(
                          color: Color(0xff7E8389),
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Text(
                        " Forgot Password",
                        style: TextStyle(
                          color: Color(0xff2b6ed4),
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),

                  SizedBox(height:18),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                    },
                    color: Color(0xff2b6ed4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 17.5),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrationPage()));
                    },
                    // defining the shape
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Text(
                      "CREATE NEW ACCOUNT",
                      style: TextStyle(
                          color: Color(0xff2b6ed4),
                          fontSize: 16
                      ),
                    ),
                  ),

                  SizedBox(height:40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Tapping equals agreement to our ',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      InkWell(onTap: () {

                      },
                          child: Text('Terms and Condition,',
                            style: TextStyle(
                              color: Color(0xff2b6ed4),
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                            ),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('and ',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      InkWell(
                        onTap: () {

                        },
                        child: Text('Privacy Policy.',
                          style: TextStyle(
                            color: Color(0xff2b6ed4),
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

// we will be creating a widget for text field
Widget inputFile({hintext, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintext,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(),
        ),
      ),
    ],
  );
}
