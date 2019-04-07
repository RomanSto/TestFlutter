import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends Drawer {
  String _avatarUri;

  MyDrawer(this._avatarUri);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _MyDrawerHeader(_avatarUri),
          ListTile(
            leading: Icon(Icons.public),
            title: Text("Flutter"),
            onTap: () async {
              const url = "https://flutter.su";
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw "Cound not launch $url";
              }
            },
          )
        ],
      ),
    );
  }
}

class _MyDrawerHeader extends DrawerHeader {
  final String _avatarUri;

  _MyDrawerHeader(this._avatarUri);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(
        margin: EdgeInsets.only(left: 10.0, top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(_avatarUri),
              maxRadius: 40,
            ),
            Container(
                child: Text("https://docs.flutter.io"),
                margin: EdgeInsets.only(top: 15.0))
          ],
        ),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xFF3954D1), const Color(0xFF8A97C9)],
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.8))),
    );
  }
}
