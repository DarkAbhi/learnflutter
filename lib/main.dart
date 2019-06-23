import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _pictures = ['Scenic Lake'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Pictures Showcase'),
          ),
          body: Column(
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
              Column(
                children: _pictures
                    .map((element) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/scene.jpg'),
                              Text(element)
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ],
          )),
    );
  }
}
