import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Utils/colors.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'My Orders',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_list_sharp))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images (1) 1.png',
                    ),
                    title: Text(
                      'JBL Headphone',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: black),
                    ),
                    subtitle: Text(
                      'Retail Price: \$35 \nQTY: 3 \nAddress: Keas 69 Str. 15234, \nChalandri Athens, Greece',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600]),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: grey,
                        )),
                  ),
                ),
              ),
            )),
        itemCount: 10,
      ),
    );
  }
}
