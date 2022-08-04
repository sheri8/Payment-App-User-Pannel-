import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Utils/colors.dart';

class Electrician extends StatelessWidget {
  const Electrician({Key? key}) : super(key: key);

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
            'Explorer',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.filter_list_sharp))
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/Basemap image.png',
                  ),
                  fit: BoxFit.cover)),
          child: Center(child: Image.asset('assets/drivers.png')),
        ));
  }
}
