import 'package:flutter/material.dart';
import 'package:smart_rdo/screens/date_picker.dart';

class AtividadeScreen extends StatefulWidget {
  @override
  _AtividadeScreenState createState() => _AtividadeScreenState();
}

class _AtividadeScreenState extends State<AtividadeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionTile'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => AreaItem(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

//Dados Mocados
final List<Area> data = <Area>[
  Area(1, "Fulano"),
  Area(2, "Ciclano"),
  Area(3, "Rodosvaldo")
];

class Area {
  Area(this.id, this.nomeResponsavel);

  final int id;
  final String nomeResponsavel;
}

class AreaItem extends StatelessWidget {
  const AreaItem(this.area);

  final Area area;

  Widget _buildTile(Area root, BuildContext context) {
    if (root.nomeResponsavel.isEmpty)
      return ListTile(title: Text(root.id.toString()));

    return ExpansionTile(
      key: PageStorageKey<Area>(root),
      title: Text("Area ${root.id} - ${root.nomeResponsavel}"),
      children: <Widget>[
        Column(
          children: <Widget>[
            DatePicker(),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTile(area, context);
  }
}
