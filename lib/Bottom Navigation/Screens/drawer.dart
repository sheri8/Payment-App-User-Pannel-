import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payment_app_userpanel/Bottom%20Navigation/Screens/home.dart';
import 'package:payment_app_userpanel/Bottom%20Navigation/Screens/lock.dart';
import 'package:payment_app_userpanel/Drawer%20screens/chats/screens/chat_page.dart';
import 'package:payment_app_userpanel/Drawer%20screens/my_services.dart';
import 'package:payment_app_userpanel/Drawer%20screens/my_wallet.dart';
import 'package:payment_app_userpanel/Utils/colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: double.infinity,
      child: Drawer(
        child: ListView(
          children: [
            drawer_header(),
            drawer_items('HOME', Image.asset('assets/drawer/Vector (1).png'),
                () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Home()));
            }),
            drawer_items('WALLET', Image.asset('assets/drawer/Vector (2).png'),
                () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => MyWallet()));
            }),
            drawer_items(
                'MY ORDERS', Image.asset('assets/drawer/Group (1).png'), () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => MyOrder()));
            }),
            drawer_items('CHAT', Image.asset('assets/drawer/Group (2).png'),
                () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => ChatPage()));
            }),
            drawer_items(
                'MY SERVICES', Image.asset('assets/drawer/Vector (3).png'), () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => MyServices()));
            }),
            drawer_items('MY FAVOURITE STORE',
                Image.asset('assets/drawer/Vector (4).png'), () {}),
            drawer_items(
                'SETTING', Image.asset('assets/drawer/Vector (5).png'), () {}),
            ListTile(
              leading: Text(
                'FIND A SERVICE',
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w700, color: black),
              ),
            )
          ],
        ),
      ),
    );
  }

  ListTile drawer_items(String title, Image image, GestureTapCallback onTap) {
    return ListTile(
      title: Text(
        title,
        style:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: black),
      ),
      leading: image,
      onTap: onTap,
    );
  }

  DrawerHeader drawer_header() {
    return DrawerHeader(
      padding: EdgeInsets.all(0.0),
      child: Card(
        elevation: 10,
        color: Color(0xffD9D9D9),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/VJdvLa-download-happy-blackman-png 1.png'),
              Text(
                'DEVID GUETTA',
                style: TextStyle(
                    fontSize: 16, color: black, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
