import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:navbar/pages/detalleProducto.dart';
import 'package:navbar/pages/categorias.dart';
import 'package:navbar/pages/DetallesReserva.dart';
import 'package:navbar/pages/perfil.dart';
import 'package:navbar/pages/login.dart';
import 'package:navbar/pages/productos.dart';
import 'package:navbar/pages/registro.dart';
import 'package:navbar/pages/reserva.dart';
import 'package:navbar/pages/reservaciones.dart';
import 'package:navbar/pages/TerminarReserva.dart';
import 'package:navbar/pages/faqs.dart';
import 'package:navbar/pages/welcome.dart';
import 'package:navbar/pages/globals.dart';
import 'package:navbar/pages/sanciones.dart';
import 'package:navbar/pages/detalleSancion.dart';

final DetalleSancion _detalleSancion = new DetalleSancion();
final Sanciones _sanciones = new Sanciones();
final Faqs _faqs = new Faqs();
final TerminarReserva _terminarReserva = new TerminarReserva();
final HomePage _welcome = new HomePage();
final Categorias _categorias = new Categorias();
final DetallesReserva _detallesReserva = new DetallesReserva();
final Perfil _perfil = new Perfil();
final Login _login = new Login();
final Productos _productos = new Productos();
final Reservas _reservas = new Reservas();
final DetalleProducto _detalleProducto = new DetalleProducto();
final Registro _registro = new Registro();
final Reservaciones _reservaciones = new Reservaciones();

GlobalKey bottomNavigationKey = GlobalKey();

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int indexpage = 0;

  Widget _mostarPagina = new HomePage();

  void cambiarPagina(int idPagina) {
    setState(() {
      _mostarPagina = _cursorDePagina(idPagina);
    });
  }

  Widget _cursorDePagina(int pagina) {
    switch (pagina) {
      case 0:
        return _faqs;
        break;
      case 1:
        return _categorias;
        break;
      case 2:
        return _sanciones;
        break;
      case 3:
        return _reservaciones;
        break;
      case 4:
        if (isLogedIn) {
          return _perfil;
        } else {
          return _login;
        }
        break;
      case 21:
        return _detallesReserva;
        break;

      case 200:
        return _productos;
        break;
      case 20:
        return _terminarReserva;
        break;
      case 22:
        return _detalleSancion;
        break;
      case 16:
        return _reservas;
        break;
      case 17:
        return _detalleProducto;
        break;
      case 18:
        return _registro;
        break;

      case 11:
        return _welcome;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text(
              "No se encontro la pagina seleccionada",
              style: new TextStyle(fontSize: 20),
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: bottomNavigationKey,
          index: indexpage,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.bubble_chart, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.featured_play_list, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.orangeAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (tappedIndex) {
            cambiarPagina(tappedIndex);
          },
        ),
        body: Container(
          color: Colors.orangeAccent,
          child: Center(
            child: _mostarPagina,
          ),
        ));
  }
}
