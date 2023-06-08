import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
        title: Text("Otp",
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
           ),
        ),
      ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 100),
              width: double.infinity,
              height: 320,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/signup_page.png"),
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
                          "Enter the code sent to",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF424242),
                          ),
                        ),
                        Text(
                          "+880 1783-669 597",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff2b6ed4),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          // controller: _nameController,
                          decoration: InputDecoration(
                            labelText: 'OTP number',
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
                          // controller: _passwordController,
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
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height:25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Code sent. ',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            InkWell(onTap: () {

                            },
                                child: Text('Resend code',
                                  style: TextStyle(
                                    color: Color(0xff2b6ed4),
                                    fontSize: 15,
                                  ),
                                )),
                            Text(' in 00:45',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 45.0),
                  Center(
                    child: Container(
                      height: 4,
                      width: 134,
                      color: Color(0xff424242),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
