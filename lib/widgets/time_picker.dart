import 'package:flutter/material.dart';
import 'package:smart_rdo/app/app_theme.dart';

class TimePicker extends StatefulWidget {
  TimePicker({this.timeInicial = ''});

  final String timeInicial;

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  String _timeString = '';

  @override
  Widget build(BuildContext context) {
    if (widget.timeInicial == '' && _timeString == '') {
      _timeString = TimeOfDay.now().format(context);
    } else if (_timeString == '') {
      _timeString = widget.timeInicial;
    }

    return RaisedButton.icon(
      onPressed: () => showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
          builder: (context, child) {
            return Theme(
              data: AppTheme.datePickerTheme,
              child: child,
            );
          }).then((time) {
        if (time != null && time.toString() != _timeString) {
          setState(() => _timeString = time.format(context));
        }
      }),
      label: Text(_timeString),
      icon: Icon(Icons.timer),
    );
  }
}
