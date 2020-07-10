import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerCustom extends StatefulWidget {
  @override
  _ImagePickerCustomState createState() => _ImagePickerCustomState();
}

class _ImagePickerCustomState extends State<ImagePickerCustom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        showImage(),
        RaisedButton.icon(
          onPressed: () => {
            pickImageFromGallery(ImageSource.gallery),
          },
          icon: Icon(Icons.image),
          label: Text('Adicionar Imagem'),
        ),
      ],
    );
  }

  Future<PickedFile> _imageFile;

  Widget showImage() {
    return FutureBuilder<PickedFile>(
      future: _imageFile,
      builder: (BuildContext context, AsyncSnapshot<PickedFile> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
              print(snapshot.data.path);
          return Image.network(
            snapshot.data.path,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Erro ao obter a imagem',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'Nenhuma imagem selecionada',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  pickImageFromGallery(ImageSource source) {
    setState(() {
      _imageFile = ImagePicker().getImage(source: source);
    });
  }
}
