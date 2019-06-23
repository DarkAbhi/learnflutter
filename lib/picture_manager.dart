import 'package:flutter/material.dart';

import './pictures.dart';

class PictureManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PictureManagerState();
  }
}

class _PictureManagerState extends State<PictureManager> {
  List<String> _pictures = ['Scenic Lake'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _pictures.add('Abstract');
              });
            },
            child: Text('Add Image'),
          ),
        ),
        Pictures(_pictures)
      ],
    );
  }
}
