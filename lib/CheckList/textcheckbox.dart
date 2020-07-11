import 'package:flutter/material.dart';

class textcheckbox extends StatefulWidget {
  const textcheckbox({
    this.texto,
    this.padding,
    this.valor,
    this.onChanged,
  });

  final String texto;
  final EdgeInsets padding;
  final bool valor;
  final Function onChanged;

  @override
  _textcheckboxState createState() => _textcheckboxState();
}

class _textcheckboxState extends State<textcheckbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(!widget.valor);
      },
      child: Padding(
        padding: widget.padding,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Card(
                    elevation: 7,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              widget.texto,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Checkbox(
                              value: widget.valor,
                              onChanged: (bool novoValor) {
                                widget.onChanged(novoValor);
                              }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}