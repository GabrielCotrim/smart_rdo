import 'package:flutter/material.dart';

class FiscalPage extends StatefulWidget {
  @override
  _FiscalPageState createState() => _FiscalPageState();
}

class _FiscalPageState extends State<FiscalPage> {
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
          'Avaliação da atividades',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Image.asset('assets/limpezaPng.png'),
      ),
    );
  }
}
