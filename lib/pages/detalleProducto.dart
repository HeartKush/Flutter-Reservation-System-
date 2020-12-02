import 'package:flutter/material.dart';
import 'package:navbar/Animation/FadeAnimation.dart';
import 'package:navbar/pages/navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class DetalleProducto extends StatefulWidget {
  DetalleProducto({Key key}) : super(key: key);

  @override
  _DetallesState createState() => new _DetallesState();
}

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}

List<String> sizeNumlist = [
  "1",
  "2",
  "3",
  "4",
  "5",
];

String desc =
    "Equipo Gamer XPG, Procesador ryzen5 3400g, Memoria XPG DDRA 8GB 3000MHZ, Unidad de estado solido: 240gb, Chasis XPG, Monitor Samsung 21.5 S22F350 FHD, Teclado y Mouse RGB";

class _DetallesState extends State<DetalleProducto> {
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
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: screenAwareSize(30.0, context),
                          color: Colors.white,
                        ),
                        onPressed: () {
                          final CurvedNavigationBarState navBarState =
                              bottomNavigationKey.currentState;
                          navBarState.setPage(200);
                        },
                      )),
                  FadeAnimation(
                    1,
                    Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Pc Gamer",
                          style: TextStyle(color: Colors.white, fontSize: 31),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  width: double.infinity,
                  child: Scaffold(
                      backgroundColor: Colors.transparent,
                      appBar: AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0.0,
                      ),
                      body: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            ProductScreenTopPart(),
                            ProductScreenBottomPart()
                          ],
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}

//
class ProductScreenTopPart extends StatefulWidget {
  @override
  _ProductScreenTopPartState createState() => new _ProductScreenTopPartState();
}

class _ProductScreenTopPartState extends State<ProductScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: screenAwareSize(245.0, context),
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset("assets/images/pc_gamer.jpg",
                    width: double.infinity, height: double.infinity),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductScreenBottomPart extends StatefulWidget {
  @override
  _ProductScreenBottomPartState createState() =>
      new _ProductScreenBottomPartState();
}

class _ProductScreenBottomPartState extends State<ProductScreenBottomPart> {
  bool isExpanded = false;
  int currentSizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: screenAwareSize(10.0, context),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(15.0, context)),
            child: Text(
              "Descripcion del Elemento",
              style: TextStyle(
                  color: Color(0xFF949598),
                  fontSize: screenAwareSize(20.0, context),
                  fontFamily: "Montserrat-SemiBold"),
            ),
          ),
          SizedBox(
            height: screenAwareSize(10.0, context),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(16.0, context),
            ),
            child: AnimatedCrossFade(
              firstChild: Text(
                desc,
                maxLines: 10,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: screenAwareSize(15.0, context),
                    fontFamily: "Montserrat-Medium"),
              ),
              secondChild: Text(
                desc,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: screenAwareSize(12.0, context),
                    fontFamily: "Montserrat-Medium"),
              ),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: kThemeAnimationDuration,
            ),
          ),
          SizedBox(
            height: screenAwareSize(10.0, context),
          ),
          Container(
            width: double.infinity,
            height: screenAwareSize(120.0, context),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: screenAwareSize(1.0, context)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                          1.6,
                          GestureDetector(
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(16);
                              },
                              child: Container(
                                height: 50,
                                width: 200,
                                margin: EdgeInsets.symmetric(horizontal: 100),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.orangeAccent),
                                child: Center(
                                  child: Text(
                                    "Reservar",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ))),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
