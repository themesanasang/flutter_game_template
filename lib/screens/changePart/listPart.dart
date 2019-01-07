import 'package:flutter/material.dart';
import 'package:flutter_game_template/constant/size_const.dart';
import 'package:flutter_game_template/screens/changePart/addPart.dart';

class listPart extends StatefulWidget {
  @override
  _listPartState createState() => _listPartState();
}

class _listPartState extends State<listPart> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(20, (i) => "Item $i");
  var items = List<String>();

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget floatingAction = FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () async {
        var response = await Navigator.push(context,
            MaterialPageRoute(builder: (context) => AddPart('Add-Page')));

        print(response['name']);
      },
      child: Icon(Icons.add),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('รายการเปลี่ยนอะไหล่ซ่อม',
            style: TextStyle(fontSize: TEXT_LARGE_SIZE)),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {
                    filterSearchResults(value);
                  },
                  controller: editingController,
                  style:
                      TextStyle(fontSize: TEXT_SMALL_SIZE, color: Colors.black),
                  decoration: new InputDecoration(
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: new TextStyle(
                          color: Colors.grey, fontSize: TEXT_SMALL_SIZE),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black))),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: floatingAction,
    );
  }
}
