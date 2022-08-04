import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Bottom%20Navigation/Screens/Search%20screens/product_detail.dart';
import 'package:payment_app_userpanel/Utils/colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      drawer: Drawer(),
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
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Text(
                'Shop Categories',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.black),
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
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10),
                    itemBuilder: (ctx, i) => SizedBox(
                          height: 300,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.end,
                                  //   children: [
                                  //     IconButton(
                                  //         onPressed: () {},
                                  //         icon: Icon(
                                  //           Icons.favorite_outline,
                                  //           color: Colors.red,
                                  //         ))
                                  //   ],
                                  // ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (builder) =>
                                                    ProductDetail()));
                                      },
                                      child: Image.asset('assets/Honey.png')),

                                  SizedBox(height: 10),
                                  Text(
                                    'Honey lime combo',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.black),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$ 2000',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Colors.red),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50)),
                                            color: Color(0xffFFF2E7)),
                                        child: Center(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.add,
                                                color: Colors.red,
                                                size: 20,
                                              )),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
