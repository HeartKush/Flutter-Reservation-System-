import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:navbar/Animation/FadeAnimation.dart';
import 'package:navbar/pages/navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';

class Reservas extends StatefulWidget {
  Reservas({Key key}) : super(key: key);
  @override
  _ReservasState createState() => new _ReservasState();
}

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}

class _ReservasState extends State<Reservas> {
  DateTime _selectedDate = DateTime.now();
  final CalendarWeekController _controller = CalendarWeekController();
  int i = 0;
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
                          navBarState.setPage(17);
                        },
                      )),
                  FadeAnimation(
                      1,
                      Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Reservas",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ))),
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              width: double.infinity,
              child: Column(children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: CalendarWeek(
                        controller: _controller,
                        height: 100,
                        minDate: DateTime.now().add(
                          Duration(days: -365),
                        ),
                        maxDate: DateTime.now().add(
                          Duration(days: 365),
                        ),
                        onDatePressed: (DateTime datetime) {
                          setState(() {
                            _selectedDate = datetime;
                          });
                        },
                        onDateLongPressed: (DateTime datetime) {
                          setState(() {
                            _selectedDate = datetime;
                          });
                        },
                        onWeekChanged: () {},
                        weekendsStyle: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w600),
                        dayOfWeekStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                        dayOfWeekAlignment: FractionalOffset.bottomCenter,
                        dateStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w400),
                        dateAlignment: FractionalOffset.topCenter,
                        todayDateStyle: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.w400),
                        todayBackgroundColor: Colors.black.withOpacity(0.15),
                        pressedDateBackgroundColor: Colors.blue,
                        pressedDateStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                        dateBackgroundColor: Colors.transparent,
                        backgroundColor: Colors.white,
                        dayOfWeek: [
                          'LUN',
                          'MAR',
                          'MIE',
                          'JUE',
                          'VIE',
                          'SAB',
                          'DOM'
                        ],
                        showMonth: true,
                        spaceBetweenLabelAndDate: 0,
                        dayShapeBorder: CircleBorder(),
                        decorations: [
                          DecorationItem(
                              decorationAlignment: FractionalOffset.bottomRight,
                              date: DateTime.now(),
                              decoration: Icon(
                                Icons.today,
                                color: Colors.blue,
                              )),
                          DecorationItem(
                              date: DateTime.now().add(Duration(days: 4)),
                              decoration: Text(
                                'FESTIVO',
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        ],
                      ),
                    )),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ListView.builder(
                              itemCount: time.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) =>
                                  Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${time[index]} ${index > 5 ? 'PM' : 'AM'}',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 5,
                            child: ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: <Widget>[
                                ContenedorReserva(
                                  titulo: ' ',
                                  subtitulo: 'Reservado',
                                  colorCaja: ColoresClaros.kLavender,
                                ),
                                ContenedorReserva(
                                  titulo: ' ',
                                  subtitulo: 'Reservado',
                                  colorCaja: ColoresClaros.kLavender,
                                ),
                                ContenedorReserva(
                                  titulo: ' ',
                                  subtitulo: 'Reservado',
                                  colorCaja: ColoresClaros.kLavender,
                                ),
                                ContenedorReserva(
                                  titulo: '',
                                  subtitulo: 'Disponible',
                                  colorCaja: ColoresClaros.kLightGreen,
                                ),
                                ContenedorReserva(
                                  titulo: ' ',
                                  subtitulo: 'Reservado',
                                  colorCaja: ColoresClaros.kLavender,
                                ),
                                ContenedorReserva(
                                  titulo: ' ',
                                  subtitulo: 'Reservado',
                                  colorCaja: ColoresClaros.kLavender,
                                ),
                                ContenedorReserva(
                                  titulo: ' ',
                                  subtitulo: 'Reservado',
                                  colorCaja: ColoresClaros.kLavender,
                                ),
                                ContenedorReserva(
                                  titulo: ' ',
                                  subtitulo: 'Reservado',
                                  colorCaja: ColoresClaros.kLavender,
                                ),
                                ContenedorReserva(
                                  titulo: '',
                                  subtitulo: 'Disponible',
                                  colorCaja: ColoresClaros.kLightGreen,
                                ),
                                ContenedorReserva(
                                  titulo: ' ',
                                  subtitulo: 'Reservado',
                                  colorCaja: ColoresClaros.kLavender,
                                ),
                                ContenedorReserva(
                                  titulo: ' ',
                                  subtitulo: 'Reservado',
                                  colorCaja: ColoresClaros.kLavender,
                                ),
                                ContenedorReserva(
                                  titulo: ' ',
                                  subtitulo: 'Reservado',
                                  colorCaja: ColoresClaros.kLavender,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]),
            ))
          ],
        ),
      ),
    );
  }
}

List<int> time = [6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6];

class ContenedorReserva extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final Color colorCaja;

  ContenedorReserva({
    this.titulo,
    this.subtitulo,
    this.colorCaja,
  });

  @override
  Widget build(BuildContext context) {
    if (this.subtitulo == 'Reservado') {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              titulo,
              style: TextStyle(
                fontSize: 1.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                subtitulo,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: colorCaja, borderRadius: BorderRadius.circular(30.0)),
      );
    }
    ;

    return GestureDetector(
        onTap: () {
          final CurvedNavigationBarState navBarState =
              bottomNavigationKey.currentState;
          navBarState.setPage(20);
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5.0),
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                titulo,
                style: TextStyle(
                  fontSize: 1.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  subtitulo,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: colorCaja, borderRadius: BorderRadius.circular(30.0)),
        ));
  }
}

class ColoresClaros {
  static const Color kLightYellow = Color(0xFFFFF9EC);
  static const Color kLightYellow2 = Color(0xFFFFE4C7);
  static const Color kDarkYellow = Color(0xFFF9BE7C);
  static const Color kPalePink = Color(0xFFFED4D6);

  static const Color kRed = Color(0xFFE46472);
  static const Color kLavender = Color(0xFFD5E4FE);
  static const Color kBlue = Color(0xFF6488E4);
  static const Color kLightGreen = Color(0xFFD9E6DC);
  static const Color kGreen = Color(0xFF309397);

  static const Color kDarkBlue = Color(0xFF0D253F);
}
