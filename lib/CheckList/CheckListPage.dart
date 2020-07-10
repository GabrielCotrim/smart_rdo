import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LabeledCheckList.dart';

class CheckListPage extends StatefulWidget {
  @override
  CheckListPageState createState() => CheckListPageState();
}

class CheckListPageState extends State<CheckListPage> {
  bool _isButtonDisabled = false;

  List<String> _texts = [
    "CNH, autorização para dirigir e documento do veículo",
    "Selo de liberação de acesso",
    "Cinto de segurança para todos os ocupantes do veículo",
    "Espelhos retrovisores (interno e externo)",
    "Alarme sonoro e visual de caçamba elevada",
    "Limpador / lavador de para-brisas",
    "Funcionamento do paínel",
    "Sinal sonoro de ré acoplado ao sistema de câmbio de marchas"
  ];

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30),
              child: CheckboxList(
                  texto:
                      "CNH, autorização para dirigir e documento do veículo"),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: CheckboxList(texto: "Selo de liberação de acesso"),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: CheckboxList(
                  texto:
                      "Cinto de segurança para todos os ocupantes do veículo"),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: CheckboxList(
                  texto: "Espelhos retrovisores (interno e externo)"),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: CheckboxList(
                  texto: "Alarme sonoro e visual de caçamba elevada"),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: CheckboxList(texto: "Limpador / lavador de para-brisas"),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: CheckboxList(texto: "Funcionamento do paínel"),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: CheckboxList(
                  texto:
                      "Sinal sonoro de ré acoplado ao sistema de câmbio de marchas"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: RaisedButton(
                    padding: EdgeInsets.all(15),
                    color: Colors.white,
                    elevation: 20,
                    onPressed: _isButtonDisabled
                        ? null
                        : () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => /*ViewAtividades()*/),
                            );
                          },
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CheckboxList extends StatefulWidget {
  final String texto;

  const CheckboxList({Key key, this.texto}) : super(key: key);

  @override
  _CheckboxListState createState() => _CheckboxListState();
}

class _CheckboxListState extends State<CheckboxList> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return LabeledCheckbox(
      texto: widget.texto,
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
