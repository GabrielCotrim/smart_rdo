import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_rdo/CheckList/checklist_screen.dart';
import 'package:smart_rdo/widgets/calendario.dart';

import '../CheckList/checklist_screen.dart';


class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Calendario(),
        ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: EdgeInsets.all(4.0),
          children: <Widget>[
            Card(
              color: Colors.white,
              elevation: 8.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.work),
                    title: Text('Limpeza mecanizada'),
                    subtitle: Text('Unidade: Cubatão - Sp'),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckListPage()),
                      );
                    },
                  )
                ],
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 8.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.work),
                    title: Text('Sucção de água do silo'),
                    subtitle: Text('Unidade: Santos - Sp'),
                    onTap: (){},
                  )
                ],
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 8.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.work),
                    title: Text('Limpeza do silo 2'),
                    subtitle: Text('Unidade: Guarujá - Sp'),
                    onTap: (){},
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}