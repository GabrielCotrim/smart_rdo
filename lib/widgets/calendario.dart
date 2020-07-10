import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_rdo/app/app_theme.dart';

class Calendario extends StatefulWidget {
  final DateFormat _dateFormat = DateFormat('dd/MM/yyyy');

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  DateTime _dataSelecionada = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 25.0,
        left: 10.0,
        right: 10.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xff5676ef),
        gradient: LinearGradient(
          colors: [Color(0xff755de5), Color(0xff5676ef),],
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
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 4.0,
                  ),
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
              Card(
                margin: EdgeInsets.all(2.0),
                color: Colors.transparent,
                shadowColor: Colors.transparent,
                clipBehavior: Clip.antiAlias,
                shape: CircleBorder(),
                child: InkWell(
                  splashColor: Color.fromRGBO(86, 119, 239, 50),
                  highlightColor: Color.fromRGBO(66, 91, 187, 50),
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(2.0),
                color: Colors.transparent,
                shadowColor: Colors.transparent,
                clipBehavior: Clip.antiAlias,
                shape: CircleBorder(),
                child: InkWell(
                  splashColor: Color.fromRGBO(86, 119, 239, 50),
                  highlightColor: Color.fromRGBO(66, 91, 187, 50),
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
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
            onPressed: () {
              _mostreCalendario();
            },
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

  Future _mostreCalendario(){
    return showDatePicker(
      context: context,
      initialDate: _dataSelecionada,
      helpText: 'Selecione uma data',
      firstDate: DateTime(2000),
      lastDate: DateTime(9999),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: AppTheme.datePickerTheme,
          child: child,
        );
      },
    ).then((data) {
      if (data != null) {
        setState(() => _dataSelecionada = data);
      }
    });
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
