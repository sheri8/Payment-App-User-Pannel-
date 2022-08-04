import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Drawer%20screens/My%20Services/past.dart';
import 'package:payment_app_userpanel/Drawer%20screens/My%20Services/upcoming.dart';

import '../../Utils/colors.dart';

class ServiceOrder extends StatefulWidget {
  const ServiceOrder({Key? key}) : super(key: key);

  @override
  State<ServiceOrder> createState() => _ServiceOrderState();
}

class _ServiceOrderState extends State<ServiceOrder> {
  String dropdownValue = 'Mumbai, Maharashtra';
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Kamal',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff474747)),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_drop_down),
                          elevation: 16,
                          style: const TextStyle(color: Color(0xff747474)),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            'Mumbai, Maharashtra',
                            'Agra',
                            'Dehli',
                            'Joonagarh',
                            'Jalandar'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Color(0xff747474)),
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                  Image.asset('assets/Ellipse 25.png')
                ],
              ),
              DefaultTabController(
                length: 2,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      ButtonsTabBar(
                        contentPadding: EdgeInsets.symmetric(horizontal: 55),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: bg,
                          // borderRadius: BorderRadius.all(Radius.circular(2))
                        ),
                        // backgroundColor: Color(0xff2AA017),
                        unselectedBackgroundColor: Colors.white,
                        labelStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        unselectedLabelStyle:
                            TextStyle(color: grey, fontWeight: FontWeight.bold),
                        borderWidth: 1,
                        unselectedBorderColor: grey,
                        borderColor: bg,

                        radius: 50,
                        tabs: [
                          Tab(
                            text: "UPCOMING",
                          ),
                          Tab(
                            text: "PAST",
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [UpComing(), Past()],
                        ),
                      ),
                    ],
                  ),
                ),
              )

              // TabBar(
              //   labelPadding: EdgeInsets.all(8),
              //   tabs: <Widget>[
              //     Tab(
              //       text: 'UPCOMING',
              //     ),
              //     Tab(
              //       text: 'PAST',
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      )),
    );
  }
}
