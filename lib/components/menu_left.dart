import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_game_template/constant/size_const.dart';

class menuLeft extends StatefulWidget {
  @override
  _menuLeftState createState() => _menuLeftState();
}

class _menuLeftState extends State<menuLeft> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Text(
                    'ชาคริต เสนาสังข์',
                    style: TextStyle(fontSize: TEXT_LARGE_SIZE),
                  ),
                ),
                accountEmail: Text(
                  'aaaa@a.com',
                  style: TextStyle(fontSize: TEXT_NORMAL_SIZE),
                ),
                /*decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/bg-head.jpg'))),*/
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(width: 0.0, color: Colors.white))),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: AssetImage('assets/images/team-01.png'),
                )),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'หน้าหลัก',
                style: TextStyle(fontSize: TEXT_NORMAL_SIZE),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/home');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.list),
              title: Text(
                'รายการเปลี่ยนอะไหล่ซ่อม',
                style: TextStyle(fontSize: TEXT_NORMAL_SIZE),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/listpart');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.storage),
              title: Text(
                'รายการอะไหล่ทั้งหมด',
                style: TextStyle(fontSize: TEXT_NORMAL_SIZE),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/liststore');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                'ข้อมูลส่วนตัว',
                style: TextStyle(fontSize: TEXT_NORMAL_SIZE),
              ),
              onTap: () {
                // Update the state of the app
                // ...
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'การตั้งค่า',
                style: TextStyle(fontSize: TEXT_NORMAL_SIZE),
              ),
              onTap: () {
                // Update the state of the app
                // ...
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'ออกจากระบบ',
                style: TextStyle(fontSize: TEXT_NORMAL_SIZE),
              ),
              onTap: () {
                exit(0);
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
