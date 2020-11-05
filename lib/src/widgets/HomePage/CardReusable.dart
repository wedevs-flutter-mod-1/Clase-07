import 'package:flutter/material.dart';

class CardReusable extends StatelessWidget {
  CardReusable({@required this.card});
  Widget card;
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(color: Colors.grey, boxShadow: [
        BoxShadow(color: Colors.black, offset: Offset(0, 2), blurRadius: 4.0)
      ],
      borderRadius: BorderRadius.circular(10.0)
      ),
      height: 200.0,
      width: 170.0,
      child: card,
    );
  }
}
