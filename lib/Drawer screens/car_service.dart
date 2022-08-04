import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Drawer%20screens/payment.dart';

import '../Utils/colors.dart';

class CarService extends StatelessWidget {
  const CarService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        title: Text(
          'Car Service',
          style: TextStyle(color: black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemBuilder: (context, index) => Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Basic Service',
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(height: 10),
                                    row('Every 5000 Kms/3 Months'),
                                    row('Takes 4 Hours'),
                                    row('1 Month Warranty '),
                                    row('Includes 9 Services'),
                                    SizedBox(height: 10),
                                    Text(
                                      'Rs. 2,599',
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Stack(children: [
                                    Image.asset('assets/Rectangle 21.png'),
                                    Positioned(
                                      top: 75,
                                      left: 15,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) =>
                                                      Payment()));
                                        },
                                        // =>
                                        // ),
                                        child: Container(
                                          width: 64,
                                          height: 24,
                                          decoration: BoxDecoration(
                                              color: white,
                                              border: Border.all(
                                                  color: Colors.blue, width: 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8))),
                                          child: Center(
                                            child: Text(
                                              'ADD',
                                              style: TextStyle(color: bg),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                )
                              ],
                            ),
                          ),
                        )),
              )
            ],
          ),
        ]),
      ),
    );
  }

  Row row(String title2) {
    return Row(
      children: [
        SizedBox(width: 10),
        _buildBullet(),
        const SizedBox(width: 5),
        text(title2)
        // _buildText(),
      ],
    );
  }

  Text text(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  SizedBox _buildBullet() {
    return SizedBox(
      height: 7,
      width: 7,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: black,
          shape: const CircleBorder(),
        ),
        child: const Text(''),
        onPressed: () {},
      ),
    );
  }

  Text _buildText() {
    return const Text(
      'Lorem Ipsum is simply dummy text of the printing and typesetting',
      style: TextStyle(fontSize: 24, color: Colors.white),
    );
  }
}
