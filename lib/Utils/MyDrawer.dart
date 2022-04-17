import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final imageUrl =
      "https://avatars.githubusercontent.com/u/12619420?s=460&u=26db98cbde1dd34c7c67b85c240505a436b2c36d&v=4";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("rudra"),
                accountEmail: Text("rudrachaudhary.4886@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.done,
                color: Colors.white,
              ),
              title: Text(
                "done",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.5,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: Text(
                "phone",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.5,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.turn_right,
                color: Colors.white,
              ),
              title: Text(
                "turn_right",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
