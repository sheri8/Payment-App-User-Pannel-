import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Drawer%20screens/order_placed.dart';
import 'package:payment_app_userpanel/Utils/colors.dart';

enum SingingCharacter {
  a,
  b,
}

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  SingingCharacter? _character = SingingCharacter.a;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        title: Text(
          'Payment',
          style: TextStyle(color: black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service Total',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400, color: black),
                ),
                Text(
                  'Rs. 2,499',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400, color: black),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Convenience Charges',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400, color: black),
                ),
                Text(
                  'Rs. 100',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400, color: black),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service Amount Payable',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w700, color: black),
                ),
                Text(
                  'Rs. 2,599',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400, color: black),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Pay Using',
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w700, color: black),
            ),
            SizedBox(height: 20),
            Card(
              color: white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ListTile(
                leading: Radio<SingingCharacter>(
                  activeColor: bg,
                  value: SingingCharacter.a,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
                title: Text(
                  'Pay Via Debit/Credit Card',
                  style: TextStyle(color: black),
                ),
              ),
            ),
            Card(
              color: white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ListTile(
                leading: Radio<SingingCharacter>(
                  activeColor: Color(0xff2B5740),
                  value: SingingCharacter.b,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
                title: Text(
                  'Cash On Delivery',
                  style: TextStyle(color: black),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amount Payable',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400, color: black),
                ),
                Text(
                  'Rs. 2599',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400, color: black),
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Basic Service',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: black),
                    ),
                    Text(
                      'Rs. 2599',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: black),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => OrderPlaced()));
                  },
                  child: Container(
                    width: 88,
                    height: 32,
                    decoration: BoxDecoration(
                      color: bg,
                      border: Border.all(color: Colors.blue, width: 1),
                    ),
                    child: Center(
                      child: Text(
                        'PAY',
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
