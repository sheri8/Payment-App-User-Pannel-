import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Bottom%20Navigation/Screens/Home%20Screens/electrician.dart';
import 'package:payment_app_userpanel/Bottom%20Navigation/Screens/drawer.dart';
import 'package:payment_app_userpanel/Utils/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      drawer: AppDrawer(),
      // Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: white,
        elevation: 0,
        title: Text(
          'Near Madina Town Faisalabad',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {},
                      child: Image.asset('assets/Vector (1).png')),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: 'What are you looking',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        fillColor: Color(0xffD9D9D9),
                        filled: true,
                        border: InputBorder.none,
                      ),
                    ),
                  )),
                  Container(
                    width: 50,
                    height: 50,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.mic_rounded)),
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )
                ],
              ),
              SizedBox(height: 20),
              Image.asset('assets/bg.png'),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  Image.asset('assets/Vector (2).png'),
                  SizedBox(width: 10),
                  Text(
                    'My recommended',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  )
                ]),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, i) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) => Electrician()));
                                },
                                child: Image.asset(
                                  'assets/electrcian 1.png',
                                  height: 75,
                                  width: 75,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'ELECTRTION',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                    itemCount: 10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shop Categories',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  Container(
                    height: 60,
                    width: 110,
                    decoration: BoxDecoration(
                        color: bg,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.lock_outline, color: white),
                        Text(
                          'See all',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/Vector (3).png'),
                        Text(
                          'Foods',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 110,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(width: 1, color: grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/Vector (4).png'),
                        Text(
                          'Foods',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 110,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(width: 1, color: grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/Vector (4).png'),
                        Text(
                          'Foods',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sellers',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  Container(
                    height: 60,
                    width: 110,
                    decoration: BoxDecoration(
                        color: bg,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.lock_outline, color: white),
                        Text(
                          'See all',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
