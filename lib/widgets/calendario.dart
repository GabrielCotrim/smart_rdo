import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../assets.dart';

class Calendario extends StatefulWidget{

  Map<String,List<int>> _mesDias = {
    'Julho':[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ],
  };
  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario>{


  @override
  Widget build(BuildContext context) {
    return Container(
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
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
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
          FlatButton(
            onPressed: () { /*TODO SHOW THE CALENDAR */},
            shape: CircleBorder(),
            padding: const EdgeInsets.all(0.0),
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ),
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