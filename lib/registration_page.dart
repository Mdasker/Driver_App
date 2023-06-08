import 'package:driver_app/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _nidpassportController = TextEditingController();
  final TextEditingController _drivinglicenseController =
  TextEditingController();
  final TextEditingController _mobilenumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  int _value = 1;

  @override
  void dispose() {
    _usernameController.dispose();
    _nidpassportController.dispose();
    _drivinglicenseController.dispose();
    _mobilenumberController.dispose();
    _emailController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2B6ED4),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset(
            "assets/icons/back_arrow_icon.svg",
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 198.21,
            decoration: BoxDecoration(
              color: Color(0xFF2B6ED4),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 37,
                  left: MediaQuery.of(context).size.width * 0.35,
                  //top: 118,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                            "assets/icons/registration_camera_icon.svg"),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          height: 38,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the radius as per your needs
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Upload",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19),
            child: Text(
              "Driver Information",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF323232),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Column(
              children: [
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full Name (same as NID*)",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFA0A8B1),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        controller: _usernameController,
                        decoration: InputDecoration(

                          labelText: 'Name',
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
                      Text(
                        "NID/Passport Number*",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFA0A8B1),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        controller: _nidpassportController,
                        decoration: InputDecoration(
                          labelText: 'e.g 123 456 00000',
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
                      Text(
                        "Driving License Number",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFA0A8B1),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        controller: _drivinglicenseController,
                        decoration: InputDecoration(
                          labelText: 'e.g 123 456 0000000',
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
                      Text(
                        "Mobile Number",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFA0A8B1),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        controller: _mobilenumberController,
                        decoration: InputDecoration(
                          labelText: 'Mobile number',
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
                      Text(
                        "Email (optional)",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFA0A8B1),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
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
                      Text(
                        "Address*",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFA0A8B1),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        style: TextStyle(color: Colors.black),
                        controller: _addressController,
                        decoration: InputDecoration(
                          labelText: 'Enter address',
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
                      Text(
                        "Gender",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF7E8389),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(

                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  },
                                ),
                                Text("Male",
                                style: TextStyle(
                                  color: Color(0xFF7E8389),
                                ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(

                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  },
                                ),
                                Text("Female",
                                  style: TextStyle(
                                    color: Color(0xFF7E8389),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  },
                                ),
                                Text("Other",
                                  style: TextStyle(
                                    color: Color(0xFF7E8389),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(

                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "NID/Passport Photo",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFFA0A8B1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  height: 108,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: Colors.grey
                                    ),
                                    //color: Color(0xFF7E8389)

                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Driving License Photo",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFFA0A8B1),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                height: 108,
                                width: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                      color: Color(0xFFA0A8B1),
                                  ),
                                  //color: Color(0xFF7E8389)

                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                        },
                        color: Color(0xff2b6ed4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 17.5),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 27.0),
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
      ),
    );
  }
}
