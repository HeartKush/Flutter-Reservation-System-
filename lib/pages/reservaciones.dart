import 'package:flutter/material.dart';
import 'package:navbar/Animation/FadeAnimation.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:navbar/Animation/FadeAnimation.dart';
import 'package:navbar/pages/navbar.dart';

class Reservaciones extends StatefulWidget {
  Reservaciones({Key key}) : super(key: key);

  @override
  _ReservacionesState createState() => new _ReservacionesState();
}

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}

class _ReservacionesState extends State<Reservaciones> {
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
                        "Reservaciones",
                        style: TextStyle(color: Colors.white, fontSize: 30),
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
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: new Container(
                      color: Colors.white,
                      child: Center(
                        child: ListView(
                          reverse: true,
                          children: <Widget>[
                            TimelineTile(
                              alignment: TimelineAlign.center,
                              isLast: true,
                              indicatorStyle: const IndicatorStyle(
                                width: 20,
                                color: Colors.orange,
                                indicatorY: 0.2,
                                padding: EdgeInsets.all(8),
                              ),
                              leftChild: GestureDetector(
                                onTap: () {
                                  final CurvedNavigationBarState navBarState =
                                      bottomNavigationKey.currentState;
                                  navBarState.setPage(21);
                                },
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        new Image(
                                            image: new AssetImage(
                                                'assets/images/oculus.jpg'),
                                            height: 160,
                                            alignment: Alignment.center),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Oculus",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "14:00 - 16:00",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "28/11/2020",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TimelineTile(
                              alignment: TimelineAlign.center,
                              indicatorStyle: const IndicatorStyle(
                                width: 20,
                                color: Colors.green,
                                padding: EdgeInsets.all(8),
                                indicatorY: 0.3,
                              ),
                              rightChild: GestureDetector(
                                onTap: () {
                                  final CurvedNavigationBarState navBarState =
                                      bottomNavigationKey.currentState;
                                  navBarState.setPage(21);
                                },
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        new Image(
                                            image: new AssetImage(
                                                'assets/images/pc_gamer.jpg'),
                                            height: 160,
                                            alignment: Alignment.center),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Pc Gamer",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "11:00 - 13:00",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "25/9/2020",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TimelineTile(
                              alignment: TimelineAlign.center,
                              indicatorStyle: const IndicatorStyle(
                                width: 20,
                                color: Colors.red,
                                padding: EdgeInsets.all(8),
                                indicatorY: 0.3,
                              ),
                              leftChild: GestureDetector(
                                onTap: () {
                                  final CurvedNavigationBarState navBarState =
                                      bottomNavigationKey.currentState;
                                  navBarState.setPage(21);
                                },
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        new Image(
                                            image: new AssetImage(
                                                'assets/images/sherif.jpg'),
                                            height: 160,
                                            alignment: Alignment.center),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Sherif",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "09:00 - 12:00",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "13/8/2020",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TimelineTile(
                              alignment: TimelineAlign.center,
                              indicatorStyle: const IndicatorStyle(
                                width: 20,
                                color: Colors.grey,
                                padding: EdgeInsets.all(8),
                                indicatorY: 0.3,
                              ),
                              rightChild: GestureDetector(
                                onTap: () {
                                  final CurvedNavigationBarState navBarState =
                                      bottomNavigationKey.currentState;
                                  navBarState.setPage(21);
                                },
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                            Colors.grey,
                                            BlendMode.saturation,
                                          ),
                                          child: Image(
                                              image: new AssetImage(
                                                  'assets/images/oculus.jpg'),
                                              height: 160,
                                              alignment: Alignment.center),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Oculus",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "12:00 - 16:00",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "28/05/2020",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TimelineTile(
                              alignment: TimelineAlign.center,
                              indicatorStyle: const IndicatorStyle(
                                width: 20,
                                color: Colors.grey,
                                padding: EdgeInsets.all(8),
                                indicatorY: 0.3,
                              ),
                              leftChild: GestureDetector(
                                onTap: () {
                                  final CurvedNavigationBarState navBarState =
                                      bottomNavigationKey.currentState;
                                  navBarState.setPage(21);
                                },
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                            Colors.grey,
                                            BlendMode.saturation,
                                          ),
                                          child: Image(
                                              image: new AssetImage(
                                                  'assets/images/sherif.jpg'),
                                              height: 160,
                                              alignment: Alignment.center),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Sherif",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "10:00 - 15:00",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "22/07/2020",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TimelineTile(
                              alignment: TimelineAlign.center,
                              isFirst: true,
                              indicatorStyle: const IndicatorStyle(
                                width: 20,
                                color: Colors.grey,
                                padding: EdgeInsets.all(8),
                                indicatorY: 0.3,
                              ),
                              rightChild: GestureDetector(
                                onTap: () {
                                  final CurvedNavigationBarState navBarState =
                                      bottomNavigationKey.currentState;
                                  navBarState.setPage(21);
                                },
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                            Colors.grey,
                                            BlendMode.saturation,
                                          ),
                                          child: Image(
                                              image: new AssetImage(
                                                  'assets/images/pc_gamer.jpg'),
                                              height: 160,
                                              alignment: Alignment.center),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "pc gamer",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "14:00 - 16:00",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "08/04/2020",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
