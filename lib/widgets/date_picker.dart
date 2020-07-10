import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

  DateTime _dataSelecionada = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blueAccent,
      child: Container(
        child: Text(
          "Selecione uma data",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      onPressed: () {
        showDatePicker(
          context: context,
          helpText: 'Selecione uma data',
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(9999),
          builder: (BuildContext context, Widget child) {
            return Theme(
              data: ThemeData.dark(),
              child: child,
            );
          },
        ).then((data)
        {
          _dataSelecionada = data;
        });
      },
    );
  }
}
