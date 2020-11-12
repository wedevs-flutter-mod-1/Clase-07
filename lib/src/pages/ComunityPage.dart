import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wedevs/src/pages/constantes.dart';
import 'package:wedevs/src/widgets/ComunityPage/DDrawer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ComunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DDrawer(),
        body: CustomScrollView(
          slivers: [
            _crearAppbar(),
            SliverList(
                delegate: SliverChildListDelegate([
              SizedBox(height: 20.0),
              _details(detailsWD),
              _details(detailsWD2),
              _cardImage(),
              _details(detailsWD2),
            ]))
          ],
        ));
  }

  Widget _crearAppbar() {
    return SliverAppBar(
      backgroundColor: Color(0xff353534),
      expandedHeight: 200.0,
      elevation: 2.0,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          'WeDevs Comunity',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        background: Image.asset('assets/img/wedevs.png', fit: BoxFit.cover),
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

  Widget _cardImage() {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      width: double.infinity,
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 5.0)
      ]),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 200.0,
            width: double.infinity,
            child: Image.asset(
              'assets/img/wedevs.png',
              fit: BoxFit.cover,
            ),
          ),

          RatingBar.builder(
            initialRating: 5,
            minRating: 2,
            itemSize: 30.0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
            itemBuilder: (context, _) => FaIcon(FontAwesomeIcons.star, color: Colors.amber,),
            onRatingUpdate: (rating) {
              print(rating);
            },
          )
        ],
      ),
    );
  }
}
