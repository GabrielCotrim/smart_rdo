import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckListPage extends StatefulWidget {
  @override
  CheckListPageState createState() => CheckListPageState();
}

class CheckListPageState extends State<CheckListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Check-List do Equipamento',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30),
            child: CheckboxList(),
          ),
        ],
      ),
    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
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
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!valor);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Card(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            texto,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Checkbox(
                            value: valor,
                            onChanged: (bool novoValor) {
                              onChanged(novoValor);
                            }),
                      ],
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

class CheckboxList extends StatefulWidget {
  CheckboxList({Key key}) : super(key: key);

  @override
  _CheckboxListState createState() => _CheckboxListState();
}

class _CheckboxListState extends State<CheckboxList> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return LabeledCheckbox(
      texto: 'Cotrim esta dentro do lixo',
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      valor: _isSelected,
      onChanged: (bool newValue) {
        setState(() {
          _isSelected = newValue;
        });
      },
    );
  }
}
