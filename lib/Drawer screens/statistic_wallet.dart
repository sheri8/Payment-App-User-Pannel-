import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Drawer%20screens/notification.dart';

import '../Utils/colors.dart';

class StatisticWallet extends StatefulWidget {
  const StatisticWallet({Key? key}) : super(key: key);

  @override
  State<StatisticWallet> createState() => _StatisticWalletState();
}

class _StatisticWalletState extends State<StatisticWallet> {
  String dropdownValue = 'Yearly';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: black,
            )),
        centerTitle: true,
        title: Text(
          'Statistic',
          style: TextStyle(color: black, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => NotificationScreen()));
              },
              icon: Icon(
                Icons.notifications_on,
                color: black,
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total balance',
                  style: TextStyle(
                      fontSize: 14, color: grey, fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$900,786',
                      style: TextStyle(
                          fontSize: 24,
                          color: black,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          color: bg,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Center(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: white,
                            ),
                            elevation: 16,
                            style: const TextStyle(color: white),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>[
                              'Yearly',
                              'Monthly',
                              'Daily',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(color: white),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Image.asset('assets/Chart.png'),
                SizedBox(height: 10),
                Text(
                  'Overview',
                  style: TextStyle(
                      fontSize: 18, color: black, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    card(
                      'Income',
                      '\$420,87',
                      Image.asset('assets/Arrow - Left.png'),
                    ),
                    card('Outcome', '\$190,32',
                        Image.asset('assets/Arrow   Down.png'))
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Level Income',
                  style: TextStyle(
                      fontSize: 18, color: black, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    card(
                      'Income',
                      '\$420,87',
                      Image.asset('assets/Arrow - Left.png'),
                    ),
                    card('Outcome', '\$190,32',
                        Image.asset('assets/Arrow   Down.png'))
                  ],
                ),
                Text(
                  'Commision',
                  style: TextStyle(
                      fontSize: 18, color: black, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    card(
                      'Income',
                      '\$420,87',
                      Image.asset('assets/Arrow - Left.png'),
                    ),
                    card('Outcome', '\$190,32',
                        Image.asset('assets/Arrow   Down.png'))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Card card(String title, String title2, Image image) {
    return Card(
      color: bg,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Center(child: image
                  // Image.asset('assets/Arrow - Left.png')
                  ),
            ),
            Text(
              title,
              // 'Income',
              style: TextStyle(
                  fontSize: 14, color: white, fontWeight: FontWeight.w400),
            ),
            Text(
              title2,
              // '\$420,87',
              style: TextStyle(
                  fontSize: 24, color: white, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
