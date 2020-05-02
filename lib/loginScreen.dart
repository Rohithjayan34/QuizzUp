import 'package:Quizup/firstPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser _user;

  final _formKey = GlobalKey<FormState>();

  GoogleSignIn _googleSignIn = new GoogleSignIn();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: isSignIn
              ? Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:115.0),
                  child: SvgPicture.asset(
                    "images/edapt_newlogo.svg",
                    color: Colors.black,
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "edapt",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Raleway',
                      fontSize: 33),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:60.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(_user.photoUrl),
                    radius: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text( 'Welcome  ' +  _user.displayName.toUpperCase()),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:100.0),
                  child: Container(
                    height: 50,
                    width: 120,
                    color: Colors.blue,
                    child: OutlineButton(

                      onPressed: () {
                        Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => new FirstScreen()),
                        );

                      },
                      child: Text("START"),
                      textColor: Colors.white,
                    ),
                  ),
                ),


              ],
            ),
          )
              : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height:120,
                  ),
                  Column(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(
                            "images/edapt_newlogo.svg",
                            color: Colors.black,
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "edapt",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontFamily: 'Raleway',
                                fontSize: 33),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Future-Proofing the next generation",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff707070)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//                      if (DateTime.now().timeZoneName == 'IST')
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Container(
                          width: 320,
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey[300]),

                              borderRadius: BorderRadius.circular(10)),
                          child: SizedBox(
                            height: 52,
                            child: Container(
                              height: 54.0, // 40dp - 2*1dp border
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    color: Colors.white,
                                    width:
                                    150,
                                    child: Form(
                                      key: _formKey,
                                      child: TextFormField(
                                        style:
                                        new TextStyle(color: Colors.black),
                                        textAlign: TextAlign.center,

                                        decoration: InputDecoration(

                                            border: UnderlineInputBorder(),
                                            enabledBorder: InputBorder.none,
                                            icon: Icon(Icons.phone_android),
                                            fillColor: Colors.white,
                                            hintText: 'Phone Number',
                                            hintStyle: TextStyle(fontSize: 15)),
                                        keyboardType: TextInputType.phone,
                                        // maxLength: 10,
                                        // validator: validateMobile,
                                        // onChanged:
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                          width: 320,

                          decoration: new BoxDecoration(

                              borderRadius: BorderRadius.circular(10)),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.blue,
                            child: SizedBox(
                              height: 54,
                              child: Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )),
                            ), onPressed: () {},),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Container(
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: OutlineButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.black,
                            child: SizedBox(
                              height: 52,
                              child: Container(
                                height: 54.0, // 40dp - 2*1dp border
                                // width: 38.0, // matches above
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Ink(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      IconButton(icon: FaIcon(FontAwesomeIcons.google), onPressed: () {
                                        handleSignIn();
                                      },),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        'GOOGLE',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ), onPressed: () {
                              handleSignIn();
                          },
//    onPressed: () {
//    setState(() {
//    bodyWidget = loadingScreen();
//    });
//    _signInWithGoogle();
//    },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width:170,
                          child: OutlineButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.blue,
                            child: SizedBox(
                              height: 52,
                              child: Container(
                                height: 54.0,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Ink(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      IconButton(icon:FaIcon(FontAwesomeIcons.facebook)),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        'FACEBOOK',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
//    setState(() {
//    bodyWidget = loadingScreen();
//    });
//    _signInWithFacebook();
//    },
                            },
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isSignIn = false;

  Future<void> handleSignIn() async {
    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
    await googleSignInAccount.authentication;

    AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    AuthResult result = (await _auth.signInWithCredential(credential));

    _user = result.user;

    setState(() {
      isSignIn = true;
    });
  }

  Future<void> gooleSignout() async {
    await _auth.signOut().then((onValue) {
      _googleSignIn.signOut();
      setState(() {
        isSignIn = false;
      });
    });
  }
}

