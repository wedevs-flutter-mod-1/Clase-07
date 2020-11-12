import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wedevs/src/pages/ComunityPage.dart';
import 'package:wedevs/src/pages/CoursesPage.dart';
import 'package:wedevs/src/pages/TutorsPage.dart';
import 'package:wedevs/src/pages/constantes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _itemSeleccion = 0;

  List<Widget> _opciones = <Widget>[
    //OPCIONES DE COURSES
    CoursesPage(),

    //COMUNIDAD
    ComunityPage(),

    //TUTORES
    TutorsPage()
  ];

  void _opcionSeleccionada(int index) {
    setState(() {
      _itemSeleccion = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _opciones.elementAt(_itemSeleccion),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.university), label: 'Courses'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.addressCard), label: 'Comunity'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userFriends), label: 'Tutors'),
        ],
        currentIndex: _itemSeleccion,
        onTap: _opcionSeleccionada,
        selectedItemColor: kMorado,
      ),
    );
  }
}



