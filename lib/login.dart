import 'package:flutter/material.dart';
import 'package:food_delivery/homepage.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color primaryGreen = Colors.green[300];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: primaryGreen,
                ),
              ),
              // Expanded(
              //   child: Container(
              //     color: Colors.white,
              //   ),
              // )
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 510,
              width: 400,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text('Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 14.0,
                          ),
                        ),
                        // TextField(
                        //   autocorrect: false,
                        //   autofocus: false,
                        //   style: TextStyle(
                        //     fontFamily: 'Raleway',
                        //     fontWeight: FontWeight.w800,
                        //     fontSize: 20.0,
                        //   ),
                        //   decoration: InputDecoration(
                        //       hintText: "Name",
                        //       enabledBorder: UnderlineInputBorder(
                        //         borderSide: BorderSide(color: Colors.white),
                        //         borderRadius: BorderRadius.circular(25.7),
                        //       ),
                        //       //  border:InputBorder.none,
                        //       filled: true,
                        //       fillColor: Colors.white,
                        //       contentPadding: EdgeInsets.all(20.0)),
                        // ),
                        SizedBox(height: 20),
                        TextField(
                          autocorrect: false,
                          autofocus: false,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w800,
                            fontSize: 20.0,
                          ),
                          decoration: InputDecoration(
                              hintText: "Mobile",
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              //  border:InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(20.0)),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          autocorrect: false,
                          autofocus: false,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w800,
                            fontSize: 20.0,
                          ),
                          decoration: InputDecoration(
                              hintText: "OTP",
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              //  border:InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(20.0)),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 10.0,
                          ),
                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Homepage();
                                },
                              ));
                            },
                            splashColor: Colors.white,
                            color: primaryGreen,
                            height: 47.0,
                            minWidth: 240.0,
                            child: Text("Submit",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Raleway",
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                )),
                          ),
                        )
                      ],
                    )
                  ]),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
