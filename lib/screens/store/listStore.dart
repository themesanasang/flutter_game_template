import 'package:flutter/material.dart';
import 'package:flutter_game_template/constant/size_const.dart';
import 'package:flutter_game_template/screens/store/addStore.dart';

class listStore extends StatefulWidget {
  @override
  _listStoreState createState() => _listStoreState();
}

class _listStoreState extends State<listStore> {
  @override
  Widget build(BuildContext context) {
    Widget floatingAction = FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () async {
        var response = await Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddStore()));

        print(response['name']);
      },
      child: Icon(Icons.add),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('รายการอะไหล่ทั้งหมด',
            style: TextStyle(fontSize: TEXT_LARGE_SIZE)),
      ),
      body: Center(
        child: Text(
          'Page2',
          style: TextStyle(fontSize: TEXT_LARGE_SIZE),
        ),
      ),
      floatingActionButton: floatingAction,
    );
  }
}
