import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:navbar/Animation/FadeAnimation.dart';
import 'package:navbar/pages/navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Sanciones extends StatefulWidget {
  Sanciones({Key key}) : super(key: key);

  @override
  _SancionesState createState() => new _SancionesState();
}

bool _status = true;
double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}

class _SancionesState extends State<Sanciones> {
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
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                    1,
                    Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: Text(
                        "Sanciones",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
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
                    title: Text(
                      "Codigo    |   Fecha   |   Estado   |   Opciones",
                      style: TextStyle(color: Colors.orangeAccent),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                  body: SingleChildScrollView(
                    child: DataTable(
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text(
                            '',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 0,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 0,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 0,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 0,
                            ),
                          ),
                        ),
                      ],
                      rows: <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('233')),
                            DataCell(Text('19/05/2020')),
                            DataCell(Text('activa')),
                            DataCell(
                              Text('Ver'),
                              onTap: () {
                                final CurvedNavigationBarState navBarState =
                                    bottomNavigationKey.currentState;
                                navBarState.setPage(22);
                              },
                            ),
                          ],
                        ),
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
}
