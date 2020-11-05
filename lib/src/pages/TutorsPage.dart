import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wedevs/src/pages/constantes.dart';

class TutorsPage extends StatefulWidget {
  @override
  _TutorsPageState createState() => _TutorsPageState();
}

class _TutorsPageState extends State<TutorsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
          backgroundColor: kMorado,
          centerTitle: true,
          title: Text('Tutores'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: FaIcon(FontAwesomeIcons.userSecret), text: 'Benja',),
              Tab(icon: FaIcon(FontAwesomeIcons.userGraduate), text: 'Cristian',),
              Tab(icon: FaIcon(FontAwesomeIcons.paw), text: 'Oso',)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Beja'),
            ),
            Center(
              child: Text('Cristian'),
            ),
            Center(
              child: Text('Oso'),
            ),
        ]),
      ),
    );
  }
}
