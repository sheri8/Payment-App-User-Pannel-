import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Utils/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 290,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/gb.png'), fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                      top: 80,
                      left: 120,
                      child: Column(
                        children: [
                          Image.asset('assets/p.png'),
                          SizedBox(
                            height: 70,
                            child: Text(
                              'Husnain Ahmad',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'hussainkhan786@gmail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        'Team Leader',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: black),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        items(Icons.shopping_cart_outlined, 'CART'),
                        items(Icons.message, 'CHAT'),
                        items(Icons.settings, 'SETTING'),
                        items(Icons.wallet, 'ALLET'),
                        items(Icons.logout, 'LOGOUT'),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      'MENU',
                      style: TextStyle(
                          color: bg, fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 15),
                    listile('HOME', Icons.home_outlined),
                    listile('WALLET', Icons.wallet),
                    ListTile(
                      leading: Image.asset('assets/Group (6).png'),
                      title: Text(
                        'MY ORDERS',
                        style: TextStyle(
                            color: black, fontWeight: FontWeight.w600),
                      ),
                    ),
                    listile('CHAT', Icons.message_outlined),
                    ListTile(
                      leading: Image.asset('assets/Vector (8).png'),
                      title: Text(
                        'MY SERVICES',
                        style: TextStyle(
                            color: black, fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/Vector (7).png'),
                      title: Text(
                        'MY FAVOURITE STORE',
                        style: TextStyle(
                            color: black, fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/Vector (5).png'),
                      title: Text(
                        'SIGN UP AS VENDOR',
                        style: TextStyle(
                            color: black, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile listile(String title, IconData icondata) {
    return ListTile(
      leading: Icon(
        icondata,
        color: black,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: black, fontWeight: FontWeight.w600),
      ),
    );
  }

  Column items(IconData icon, String title) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              size: 35,
              color: black,
            )),
        // Icon(
        //   icon,
        //   color: black,
        //   size: 35,
        // ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w700, color: black),
        ),
      ],
    );
  }
}
