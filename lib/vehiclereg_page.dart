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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Column(
                children: [
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "City",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFA0A8B1),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          // controller: _usernameController,
                          decoration: InputDecoration(

                            labelText: 'Select City',
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
                          "Truck Type",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFA0A8B1),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          // controller: _nidpassportController,
                          decoration: InputDecoration(
                            labelText: 'Select Truck',
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
                          "Brand Name",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFA0A8B1),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          // controller: _drivinglicenseController,
                          decoration: InputDecoration(
                            labelText: 'Enter Brand name',
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
                          "Registration Number",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFA0A8B1),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          // controller: _mobilenumberController,
                          decoration: InputDecoration(
                            labelText: 'Enter registration number',
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
                        const SizedBox(height: 16),
                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Text(
                        //             "Model",
                        //             style: TextStyle(
                        //               fontSize: 15,
                        //               color: Color(0xFFA0A8B1),
                        //             ),
                        //           ),
                        //           const SizedBox(
                        //             height: 8,
                        //           ),
                        //           TextFormField(
                        //             style: TextStyle(color: Colors.black),
                        //             // controller: _addressController,
                        //             decoration: InputDecoration(
                        //               labelText: 'e.g Maxima',
                        //               labelStyle: TextStyle(color: Color(0xFF7E8389)),
                        //               filled: true,
                        //               border: OutlineInputBorder(
                        //                   borderRadius: BorderRadius.circular(10),
                        //                   borderSide: BorderSide(
                        //                       width: 1, color: Color(0xFF7E8389))),
                        //               enabledBorder: OutlineInputBorder(
                        //                 borderRadius: BorderRadius.circular(10.0),
                        //                 borderSide: BorderSide(color: Color(0xFF7E8389)),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     SizedBox(width: 20,),
                        //     Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Text(
                        //           "Year",
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             color: Color(0xFFA0A8B1),
                        //           ),
                        //         ),
                        //         const SizedBox(
                        //           height: 8,
                        //         ),
                        //         TextFormField(
                        //           style: TextStyle(color: Colors.black),
                        //           // controller: _addressController,
                        //           decoration: InputDecoration(
                        //             labelText: 'Enter year',
                        //             labelStyle: TextStyle(color: Color(0xFF7E8389)),
                        //             filled: true,
                        //             border: OutlineInputBorder(
                        //                 borderRadius: BorderRadius.circular(10),
                        //                 borderSide: BorderSide(
                        //                     width: 1, color: Color(0xFF7E8389))),
                        //             enabledBorder: OutlineInputBorder(
                        //               borderRadius: BorderRadius.circular(10.0),
                        //               borderSide: BorderSide(color: Color(0xFF7E8389)),
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(
                        //   height: 16,
                        // ),
                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Text(
                        //             "Truck Size",
                        //             style: TextStyle(
                        //               fontSize: 15,
                        //               color: Color(0xFFA0A8B1),
                        //             ),
                        //           ),
                        //           const SizedBox(
                        //             height: 8,
                        //           ),
                        //           TextFormField(
                        //             style: TextStyle(color: Colors.black),
                        //             // controller: _addressController,
                        //             decoration: InputDecoration(
                        //               labelText: 'Select Ton',
                        //               labelStyle: TextStyle(color: Color(0xFF7E8389)),
                        //               filled: true,
                        //               border: OutlineInputBorder(
                        //                   borderRadius: BorderRadius.circular(10),
                        //                   borderSide: BorderSide(
                        //                       width: 1, color: Color(0xFF7E8389))),
                        //               enabledBorder: OutlineInputBorder(
                        //                 borderRadius: BorderRadius.circular(10.0),
                        //                 borderSide: BorderSide(color: Color(0xFF7E8389)),
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     SizedBox(width: 20,),
                        //     Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Text(
                        //           "Registration paper phó..",
                        //           style: TextStyle(
                        //             fontSize: 15,
                        //             color: Color(0xFFA0A8B1),
                        //           ),
                        //         ),
                        //         const SizedBox(
                        //           height: 8,
                        //         ),
                        //         // TextFormField(
                        //         //   style: TextStyle(color: Colors.black),
                        //         //   // controller: _addressController,
                        //         //   decoration: InputDecoration(
                        //         //     labelText: 'Select Ton',
                        //         //     labelStyle: TextStyle(color: Color(0xFF7E8389)),
                        //         //     filled: true,
                        //         //     border: OutlineInputBorder(
                        //         //         borderRadius: BorderRadius.circular(10),
                        //         //         borderSide: BorderSide(
                        //         //             width: 1, color: Color(0xFF7E8389))),
                        //         //     enabledBorder: OutlineInputBorder(
                        //         //       borderRadius: BorderRadius.circular(10.0),
                        //         //       borderSide: BorderSide(color: Color(0xFF7E8389)),
                        //         //     ),
                        //         //   ),
                        //         // ),
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(
                        //   height: 16,
                        // ),
                        Row(

                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Truck Photo",
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
                                  "Registration paper phó..",
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
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                          },
                          color: Color(0xff2b6ed4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 17.5),
                            child: Center(
                              child: Text(
                                "Save Vehicle",
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
        )
    );
  }
}
