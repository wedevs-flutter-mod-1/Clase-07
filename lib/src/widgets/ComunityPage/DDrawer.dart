import 'package:flutter/material.dart';
import 'package:wedevs/src/pages/constantes.dart';
import 'package:wedevs/src/widgets/ComunityPage/MenuItem.dart';

class DDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff353534)
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 30.0,
                        child: Text('M', style: TextStyle(fontSize: 30.0)),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Magin Luna', style: kblanco),
                            Text('maginluna@gmail.com', style: kblanco)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          MenuItem()
        ],
      ),
    );
  }
}
