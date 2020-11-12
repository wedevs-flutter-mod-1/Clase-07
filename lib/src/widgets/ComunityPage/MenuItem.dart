import 'package:flutter/material.dart';
import 'package:wedevs/src/widgets/ComunityPage/Item.dart';

class MenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(
          children: [
            Items(
              text: Text('Nuevo Grupo'),
              icono: Icon(Icons.people_alt_outlined),
             ontap: (){},
            ),
            Items(
              text: Text('Nuevo Chat Secreto'),
              icono: Icon(Icons.lock_outline),
             ontap: (){},
            ),
            Items(
              text: Text('Nuevo canal'),
              icono: Icon(Icons.voice_chat),
             ontap: (){},
            ),
            Items(
              text: Text('Contactos'),
              icono: Icon(Icons.perm_identity),
             ontap: (){},
            ),
            Items(
              text: Text('LLamadas'),
              icono: Icon(Icons.phone),
             ontap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
