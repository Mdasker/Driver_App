import 'package:driver_app/registration_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

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
              height: 320,
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
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Enter your mobile number",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF424242),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          controller: _nameController,
                          decoration: InputDecoration(
                            labelText: 'Enter a mobile number',
                            labelStyle: TextStyle(color: Color(0xFF7E8389)),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xFF7E8389))),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Color(0xFF7E8389)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          obscureText: true,
                          style: TextStyle(color: Colors.black),
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Color(0xFF7E8389)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xFF7E8389))),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Color(0xFF7E8389)),
                            ),
                          ),
                        ),
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

                        SizedBox(height:17),
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

                        SizedBox(height:36),
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
                  const SizedBox(height: 16.0),


/*                  Text(
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
                  inputFile(hintext: "password", obscureText: true, ),*/
                ],
              ),
            ),
          ],
        ));
  }
}

/*// we will be creating a widget for text field
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
}*/
