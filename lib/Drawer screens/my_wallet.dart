import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payment_app_userpanel/Drawer%20screens/statistic_wallet.dart';

import '../Utils/colors.dart';

class MyWallet extends StatelessWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset('assets/Rectangle 2656.png'),
              title: Text(
                'Welcome Back,',
                style: TextStyle(
                    fontSize: 10, fontWeight: FontWeight.w400, color: grey),
              ),
              subtitle: Text(
                'Nermeen Saif',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, color: black),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => StatisticWallet()));
              },
              child: Image.asset(
                'assets/WhatsApp_Image_2022-08-01_at_11.44.48_AM-removebg-preview.png',
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                container('Send', Image.asset('assets/3 User.png')),
                container('Transfer', Image.asset('assets/Swap.png')),
                container('Manage', Image.asset('assets/Vector.png')),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromARGB(255, 240, 235, 235),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Last Activity',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: black),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: bg),
                          ))
                    ],
                  ),
                  SizedBox(height: 5),
                  Card(
                    color: Color(0xffF4EEFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 180, 219, 173)),
                        child: Center(
                          child: Image.asset('assets/Vector (111).png'),
                        ),
                      ),
                      title: Text(
                        'Shopping',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: bg),
                      ),
                      subtitle: Text(
                        'June 23, 4:45 pm',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff2AA017)),
                      ),
                      trailing: Text(
                        '-\$236',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: bg),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  Container container(String title, Image image) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 65,
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Color.fromARGB(255, 180, 219, 173)),
      child: Column(
        children: [
          image,
          Text(
            title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w300, color: black),
          ),
        ],
      ),
    );
  }
}
