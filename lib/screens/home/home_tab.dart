import 'package:flutter/material.dart';
import 'package:flutter_game_template/components/menu_left.dart';
import 'package:flutter_game_template/constant/main_const.dart';
import 'package:flutter_game_template/constant/size_const.dart';
import 'package:flutter_game_template/screens/changePart/listPart.dart';
import 'package:flutter_game_template/screens/store/listStore.dart';
import 'package:flutter_game_template/screens/changePart/addPart.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

const ITEM_COUNT = 2;

class _HomeTabState extends State<HomeTab> {
  var curItemType = ItemType.addPart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text('(เกม)=>ทดสอบ', style: TextStyle(fontSize: TEXT_LARGE_SIZE)),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.camera),
                onPressed: () => Navigator.of(context).pushNamed('/page3')),
          ],
        ),
        body: _itemBody(curItemType),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _bottomItems(),
          onTap: _selectItem,
        ));
  }

  List<BottomNavigationBarItem> _bottomItems() {
    return [_bottomItem(ItemType.addPart), _bottomItem(ItemType.addStore)];
  }

  BottomNavigationBarItem _bottomItem(ItemType type) {
    return BottomNavigationBarItem(
      icon: Icon(
        BOTTOM_ICONS[type.index],
        color: _itemColor(type),
      ),
      title: Text(
        BOTTOM_TITLES[type.index],
        style: TextStyle(
          color: _itemColor(type),
          fontSize: TEXT_NORMAL_SIZE,
        ),
      ),
    );
  }

  Widget _itemBody(ItemType type) {
    switch (type) {
      case ItemType.addPart:
        return listPart();
      case ItemType.addStore:
        return listStore();
      default:
        return listPart();
        ;
    }
  }

  Color _itemColor(type) {
    return curItemType == type ? BAR_BACK_COLORS[0] : Colors.grey;
  }

  void _selectItem(index) {
    setState(() {
      var cur = index;
      curItemType = convertItemType(cur);
    });
  }
}
