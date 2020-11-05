import 'package:flutter/material.dart';
import 'package:wedevs/src/pages/constantes.dart';

class DetailsWD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
      slivers: [
        _crearAppbar(),
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(height: 20.0),
          _details(detailsWD),
          _image('assets/img/webdesign.jpg'),
          _details(detailsWD2),
        ]))
      ],
    ));
  }

  Widget _crearAppbar() {
    return SliverAppBar(
      backgroundColor: kMorado,
      expandedHeight: 200.0,
      elevation: 2.0,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          'Web Design',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        background: Hero(tag:'tag1',child: Image.asset('assets/img/wd.jpg', fit: BoxFit.cover)),
      ),
    );
  }

  Widget _details(String detalle) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      child: Text(
        detalle,
        textAlign: kjustificado,
        style: detallebody,
      ),
    );
  }

  Widget _image(String ruta) {
    return Container(
       padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
      child:ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(ruta, fit: BoxFit.fill,)
      )
    );
  }
}
