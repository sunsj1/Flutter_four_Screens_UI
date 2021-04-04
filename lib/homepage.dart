import 'package:flutter/material.dart';
import 'package:food_delivery/profile.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color primaryGreen = Colors.green[300];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        backgroundColor: Colors.green[500],
      ),
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.green[600], Colors.green[200]])),
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
              //margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                      Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('Menu',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                                radius: 60,
                                backgroundColor: Colors.green[200],
                                child: Image(
                                  image: AssetImage('assets/images/user.png'),
                                  height: 60,
                                )),
                            Text(
                              'Profile',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.green[200],
                              child: Image(
                                image: AssetImage('assets/images/calendar.png'),
                                height: 50,
                              ),
                            ),
                            Text(
                              'Events',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.green[200],
                              child: Image(
                                image: AssetImage('assets/images/offer.png'),
                                height: 50,
                              ),
                            ),
                            Text(
                              'Offer',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.green[200],
                              child: Image(
                                image: AssetImage(
                                    'assets/images/team-building.png'),
                                height: 50,
                              ),
                            ),
                            Text(
                              'Members',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: MaterialButton(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return ProfilePage();
                            },
                          ));
                        },
                        splashColor: Colors.white,
                        color: primaryGreen,
                        height: 47.0,
                        minWidth: 240.0,
                        child: Text("View All Options",
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
