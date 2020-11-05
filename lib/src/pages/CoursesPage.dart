import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedevs/src/pages/constantes.dart';
import 'package:wedevs/src/widgets/HomePage/CardReusable.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: CustomPaint(
            painter: _HeaderPainter(),
          ),
        ),
        Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Hi, Nombre',
                  style: ksaludo,
                ),
              ),
            ),
            Container(
              height: 25.0,
              child: Text(
                'Courses within the community',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato'),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => _alertDialog(context));
                    },
                    child: CardReusable(
                      card: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/img/flutter.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )),


                  Expanded(
                    child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'detailsWD');
                    },
                    child: Hero(
                      tag: 'tag1',
                      child: CardReusable(
                          card: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/img/wd.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: CardReusable(
                          card: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/img/unreal.png',
                      fit: BoxFit.cover,
                    ),
                  ))),
                  Expanded(
                      child: CardReusable(
                          card: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/img/angular.png',
                      fit: BoxFit.cover,
                    ),
                  ))),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class _HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Caracteristicas del lapiz
    final pencil = Paint();
    pencil.color = kMorado;
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 20;

    //Path
    final path = new Path();

    //DIBUJADO DE LAS CUADRADO
    // path.moveTo(0, size.height * 0.5);
    // path.lineTo(size.width, size.height * 0.5);
    // path.lineTo(size.width, 0);
    // path.lineTo(0, 0);

    //DIBUJAR CURVA
    path.lineTo(0, size.height * 0.3);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.2, size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

Widget _alertDialog(BuildContext context) {
  return AlertDialog(
    title: Text('Flutter'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/img/flutter.png'),
        SizedBox(
          height: 20.0,
        ),
        Text(detailsF, textAlign: kjustificado)
      ],
    ),
    actions: [
      FlatButton(
          onPressed: () => Navigator.of(context).pop(), child: Text('OK'))
    ],
  );
}
