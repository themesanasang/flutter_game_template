import 'package:flutter/material.dart';

class AddPart extends StatefulWidget {
  var params;

  AddPart(this.params);

  @override
  _AddPartState createState() => _AddPartState(params);
}

class _AddPartState extends State<AddPart> {
  var params;

  _AddPartState(this.params);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เพิ่มข้อมูล'),
      ),
      body: ListView(
        children: <Widget>[
          Text(
            'Params: $params',
            style: TextStyle(fontSize: 20.0),
          ),
          Text('AddData'),
          RaisedButton(
            onPressed: () =>
                Navigator.of(context).pop({'id': 100, 'name': 'Flutter'}),
            color: Colors.blue,
            child: Text('Back'),
          )
        ],
      ),
    );
  }
}
