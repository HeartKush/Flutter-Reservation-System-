import 'package:flutter/material.dart';
import 'package:navbar/Animation/FadeAnimation.dart';
import 'package:navbar/pages/navbar.dart';
import 'package:navbar/pages/globals.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_core/firebase_core.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.orangeAccent,
          Colors.orange[800],
          Colors.orange[400]
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Game Dev Lab",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "Universidad Autonoma de Bucaramanga",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(
                            1.7,
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Container(
                                height: 50,
                                child: Center(
                                  child: Text(
                                    "Inicia en tu cuenta",
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 18),
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.6,
                            GestureDetector(
                                onTap: () {
                                  _signInWithGoogle();
                                },
                                child: Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blueAccent),
                                  child: Center(
                                    child: Text(
                                      "Inicia sesión con Google",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ))),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.7,
                          GestureDetector(
                            onTap: () {
                              final CurvedNavigationBarState navBarState =
                                  bottomNavigationKey.currentState;
                              navBarState.setPage(18);
                            },
                            child: Container(
                              height: 30,
                              child: Center(
                                child: Text(
                                  "No tienes cuenta? Solicitala aqui.",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.7,
                            new Image(
                                image: new AssetImage(
                                    'assets/images/unab_logo.jpg'),
                                height: 160,
                                alignment: Alignment.center)),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //inicio de sesión utilizando google
  void _signInWithGoogle() async {
    try {
      UserCredential userCredential;

      if (kIsWeb) {
        GoogleAuthProvider googleProvider = GoogleAuthProvider();
        userCredential = await _auth.signInWithPopup(googleProvider);
      } else {
        final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final GoogleAuthCredential googleAuthCredential =
            GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        try {
          userCredential =
              await _auth.signInWithCredential(googleAuthCredential);
          final user = userCredential.user;
          print(user);
          isLogedIn = true;
          imagenUser = user.photoURL;
          emailUser = user.email;
          nombreUser = user.displayName;
          final CurvedNavigationBarState navBarState =
              bottomNavigationKey.currentState;
          navBarState.setPage(1);
        } catch (e) {
          print(e);
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
