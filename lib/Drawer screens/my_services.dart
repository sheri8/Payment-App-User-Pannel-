import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Drawer%20screens/My%20Services/service_orders.dart';
import 'package:payment_app_userpanel/Drawer%20screens/car_service.dart';

import '../Utils/colors.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  String dropdownValue = 'Mumbai, Maharashtra';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              style: const TextStyle(color: grey),
                              // underline: Container(
                              //   height: 2,
                              //   color: Colors.deepPurpleAccent,
                              // ),
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
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                      Image.asset('assets/Ellipse 25.png')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: black),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        suffixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: 'Search a service',
                        hintStyle: TextStyle(
                          color: grey,
                        ),
                        fillColor: white,
                        filled: true,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(height: 10),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemBuilder: (BuildContext context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => CarService()));
                        },
                        child: cart(
                            '   Car\nService',
                            Image.asset(
                              'assets/service/car.png',
                            )),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(36))),
                    margin: EdgeInsets.only(top: 60, bottom: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => ServiceOrder()));
                        },
                        child: Text(
                          'Show Orders',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          primary: bg,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Card cart(String title, Image image) {
    return Card(
      elevation: 5,
      color: white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            image,
            SizedBox(height: 10),
            Center(
              child: Text(
                title,
                style: TextStyle(color: black, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
