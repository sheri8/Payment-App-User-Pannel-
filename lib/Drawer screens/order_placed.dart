import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payment_app_userpanel/Bottom%20Navigation/Screens/home.dart';
import 'package:payment_app_userpanel/Utils/colors.dart';

class OrderPlaced extends StatelessWidget {
  const OrderPlaced({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset('assets/order.png')),
              SizedBox(height: 20),
              Text(
                'Order was placed Successfully!',
                style: TextStyle(
                    color: bg, fontWeight: FontWeight.w700, fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'We’ve received your order and our team is working to get it to you as quick and sae as possible.',
                style: TextStyle(
                    color: grey, fontWeight: FontWeight.w700, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (builder) => Home()));
                },
                child: Container(
                  width: 125,
                  height: 32,
                  decoration: BoxDecoration(
                    color: bg,
                    border: Border.all(color: Colors.blue, width: 1),
                  ),
                  child: Center(
                    child: Text(
                      'GO TO HOME',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
