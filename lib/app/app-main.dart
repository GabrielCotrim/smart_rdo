import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_rdo/assets.dart';

import 'app_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 25.0,
              left: 10.0,
              right: 10.0,
            ),
            decoration: BoxDecoration(
              color: Color(0xffffe4d4),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(banner),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Julho",
                              style: TextStyle(
                                color: Color.fromRGBO(248, 248, 248, 50.0),
                                fontWeight: FontWeight.w200,
                                letterSpacing: 1.0,
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              "Terça-feira",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      iconSize: 20.0,
                      icon: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                      onPressed: () => {},
                    ),
                    IconButton(
                      iconSize: 20.0,
                      icon: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                      onPressed: () => {},
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      columnActivities('D', '23'),
                      columnActivities('S', '24'),
                      columnActivities('T', '25', opacity: false),
                      columnActivities('Q', '26'),
                      columnActivities('Q', '27'),
                      columnActivities('S', '28'),
                      columnActivities('S', '29'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 4.0)),
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: EdgeInsets.all(8.0),
            children: <Widget>[
              Card(
                color: Colors.white,
                elevation: 8.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.work),
                      title: Text('Varrição da estrutura'),
                      subtitle: Text('Unidade: Cubatão - Sp'),
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
          )
        ],
      ),
    );
  }

  Widget columnActivities(String sigla, String day, {bool opacity = true}) {
    return Column(
      children: <Widget>[
        Text(
          sigla,
          style: TextStyle(
            color: Color.fromRGBO(248, 248, 248, 85.0),
            fontWeight: FontWeight.w300,
            fontSize: 16.0,
          ),
        ),
        GestureDetector(
          child: Container(
            margin: EdgeInsets.only(top: 4.0),
            decoration: BoxDecoration(
              color:
                  opacity ? Color.fromRGBO(248, 248, 248, 85.0) : Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: rowActivities(day),
          ),
        ),
      ],
    );
  }

  Widget rowActivities(String day) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 10.0),
          child: Text(
            day,
            style: TextStyle(
              color: Color.fromRGBO(16, 16, 16, 85.0),
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 6.0,
            right: 6.0,
            bottom: 4.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 1.5,
                  right: 1.5,
                  bottom: 4.0,
                ),
                child: Icon(
                  Icons.brightness_1,
                  size: 5.0,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.5,
                  right: 1.5,
                  bottom: 4.0,
                ),
                child: Icon(
                  Icons.brightness_1,
                  size: 5.0,
                  color: Colors.yellow,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.5,
                  right: 1.5,
                  bottom: 4.0,
                ),
                child: Icon(
                  Icons.brightness_1,
                  size: 5.0,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
