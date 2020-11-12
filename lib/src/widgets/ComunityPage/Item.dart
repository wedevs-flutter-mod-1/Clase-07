import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  Items({
    @required this.text,
    @required this.icono,
    @required this.ontap
  });
  final Text text;
  final Icon icono;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icono,
      trailing: Icon(Icons.arrow_forward_ios),
      title: text,
      onTap: ontap,
    );
  }
}
