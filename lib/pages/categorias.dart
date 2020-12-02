import 'package:flutter/material.dart';
import 'package:navbar/pages/navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:navbar/Animation/FadeAnimation.dart';

class Categorias extends StatefulWidget {
  Categorias({Key key}) : super(key: key);

  @override
  _CategoriasState createState() => new _CategoriasState();
}

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}

class _CategoriasState extends State<Categorias> {
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
                      Text(
                        "Categorias",
                        style: TextStyle(color: Colors.white, fontSize: 38),
                      )),
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
                        toolbarHeight: 0.0,
                      ),
                      body: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[CategoriasItems()],
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}

class CategoriasItems extends StatefulWidget {
  @override
  _CategoriasItemsState createState() => new _CategoriasItemsState();
}

class _CategoriasItemsState extends State<CategoriasItems> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            FadeAnimation(
                1.0,
                makeItem(
                    image: 'assets/images/uno2.png',
                    tag: 'red',
                    context: context,
                    nombre: "KITS",
                    pag: 200)),
            FadeAnimation(
                1.0,
                makeItem(
                    image: 'assets/images/dos1.png',
                    tag: 'blue',
                    context: context,
                    nombre: "SALA",
                    pag: 17)),
            FadeAnimation(
                1.0,
                makeItem(
                    image: 'assets/images/teclado.png',
                    tag: 'white',
                    context: context,
                    nombre: "ITEMS",
                    pag: 200)),
          ],
        ),
      ),
    );
  }
}

Widget makeItem({image, tag, context, nombre, pag}) {
  return Hero(
    tag: tag,
    child: GestureDetector(
      onTap: () {
        final CurvedNavigationBarState navBarState =
            bottomNavigationKey.currentState;
        navBarState.setPage(pag);
      },
      child: Container(
        height: 250,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[400],
                  blurRadius: 10,
                  offset: Offset(0, 10))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                          1,
                          Text(
                            nombre,
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.deepOrangeAccent,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 10,
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
