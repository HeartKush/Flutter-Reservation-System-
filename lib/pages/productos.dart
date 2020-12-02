import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:navbar/Animation/FadeAnimation.dart';
import 'package:navbar/pages/navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Productos extends StatefulWidget {
  Productos({Key key}) : super(key: key);

  @override
  _ProductosState createState() => new _ProductosState();
}

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}

class _ProductosState extends State<Productos> {
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
                          navBarState.setPage(1);
                        },
                      )),
                  FadeAnimation(
                      1,
                      Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Items",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ))),
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
                          children: <Widget>[ProductosLista()],
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}

class ProductosLista extends StatefulWidget {
  @override
  _ProductosListaState createState() => new _ProductosListaState();
}

class _ProductosListaState extends State<ProductosLista> {
  Widget build(BuildContext context) {
    final _listItem = [
      ['assets/images/oculus.jpg', "Elemento #1"],
      ['assets/images/pc_gamer.jpg', "Elemento #2"],
      ['assets/images/sherif.jpg', "Elemento #3"],
      ['assets/images/oculus.jpg', "Elemento #4"],
      ['assets/images/pc_gamer.jpg', "Elemento #5"],
      ['assets/images/sherif.jpg', "Elemento #6"],
      ['assets/images/oculus.jpg', "Elemento #7"],
      ['assets/images/pc_gamer.jpg', "Elemento #8"],
      ['assets/images/sherif.jpg', "Elemento #9"],
    ];
    return new Container(
      width: double.infinity,
      height: screenAwareSize(500.0, context),
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listItem
                        .map((item) => Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: GestureDetector(
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(17);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(39.5),
                                        topRight: const Radius.circular(39.5),
                                        bottomLeft: const Radius.circular(39.5),
                                        bottomRight:
                                            const Radius.circular(39.5)),
                                    image: DecorationImage(
                                        image: AssetImage(item[0]),
                                        fit: BoxFit.cover)),
                                child: Transform.translate(
                                  offset: Offset(0, 0),
                                  child: Container(
                                      height: 250,
                                      width: double.infinity,
                                      margin: EdgeInsets.only(top: 120),
                                      decoration: new BoxDecoration(
                                          color: Colors.black38,
                                          borderRadius: new BorderRadius.only(
                                              bottomLeft:
                                                  const Radius.circular(39.0),
                                              bottomRight:
                                                  const Radius.circular(35.0))),
                                      child: Center(
                                        child: Text(
                                          item[1],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                ),
                              ),
                            )))
                        .toList(),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
