import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://avatars.githubusercontent.com/u/26418439?v=4";
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountEmail: Text(
                    "mujtaba.aamir1@gmail.com",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  accountName: Text(
                    "Mohd Mujtaba",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(
                leading: Icon(CupertinoIcons.home),
                title: Text(
                  "Home",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.black),
                )),
            Divider(),
            ListTile(
                leading: Icon(CupertinoIcons.profile_circled),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.black),
                )),
            Divider(),
            ListTile(
                leading: Icon(CupertinoIcons.mail),
                title: Text(
                  "Mail",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
