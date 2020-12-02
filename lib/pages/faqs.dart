import 'package:flutter/material.dart';
import 'package:navbar/pages/navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:navbar/Animation/FadeAnimation.dart';

class Faqs extends StatefulWidget {
  Faqs({Key key}) : super(key: key);

  @override
  _FaqsState createState() => new _FaqsState();
}

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}

class _FaqsState extends State<Faqs> {
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
                        "FAQS",
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
                child: Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    appBar: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      toolbarHeight: 0.0,
                    ),
                    body: Scaffold(
                      body: Padding(
                        padding: EdgeInsets.all(20),
                        child: ListView(
                          children: [
                            faqTile(
                                titulo: "Que es Game Dev Lab App?",
                                imagen: 'assets/images/sala1.jpg',
                                descripcion:
                                    "Game Dev Lab App es un sistema de reservas el cual permite a los usuarios reservar un item,sala o kit del Game Dev Lab"),
                            faqTile(
                                titulo: "Como iniciar sesión?",
                                imagen: 'assets/images/inicio.png',
                                descripcion:
                                    'Presiona el boton de "Perfil" ubicado en la parte inferior derecha de la app y podras desplegar la pestaña de inicio de sesión '),
                            faqTile(
                                titulo: "Como solicitar una cuenta?",
                                imagen: 'assets/images/solicitarCuenta.png',
                                descripcion:
                                    'En el apartado de inicio de sesión podrás encontrar la frase "No tienes cuenta? Solicitala aqui" si la presionas te llevara directo a la pestaña de solicitar cuenta. '),
                            faqTile(
                                titulo: "Como hacer una reserva?",
                                imagen: 'assets/images/detalleProducto.png',
                                descripcion:
                                    'Para hacer una reserva deberás ir a la pestaña de "Categorías" y seleccionar entre "ITEMS, SALA O KITS" luego de esto deberas seleccionar el elemento a reservar y posteriormente presionar el botón "Reservar"'),
                          ],
                        ),
                      ),
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

  Widget faqTile({titulo, imagen, descripcion}) {
    return ExpansionTile(
      title: Text(
        titulo,
        style: TextStyle(color: Colors.orangeAccent, fontSize: 25),
      ),
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            child: Column(
              children: [
                Image.asset(
                  imagen,
                  height: 350,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    descripcion,
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
