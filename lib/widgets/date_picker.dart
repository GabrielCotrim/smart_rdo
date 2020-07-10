import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _dataSelecionada = DateTime.now();
  DateFormat _dateFormat = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: () => _showDatePicker(context),
      icon: Icon(Icons.date_range),
      label: Text(_dateFormat.format(_dataSelecionada)),
    );
  }

  void _showDatePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: _dataSelecionada,
      helpText: 'Selecione uma data',
      firstDate: DateTime(2000),
      lastDate: DateTime(9999),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    ).then((data) {
      if (data != null) {
        setState(() => _dataSelecionada = data);
      }
    });
  }
}
