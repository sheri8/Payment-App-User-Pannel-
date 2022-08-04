import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Utils/colors.dart';

class Past extends StatelessWidget {
  const Past({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Column(
          children: [
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Basic Service',
                          // 'Basic Service',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: black),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (builder) =>
                            //             Payment()));
                          },
                          child: Container(
                            width: 80,
                            height: 24,
                            decoration: BoxDecoration(
                                color: white,
                                border: Border.all(color: bg, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Center(
                              child: Text(
                                'COMPLETED',
                                // 'CONFIRMED',
                                style: TextStyle(color: bg),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Basic Service',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: grey),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'General Motors ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: black),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Color(0xffFFBC10),
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Color(0xffFFBC10),
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Color(0xffFFBC10),
                            ),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Color(0xffFFBC10),
                            ),
                            Icon(
                              Icons.star_border_rounded,
                              size: 16,
                              color: Color(0xffFFBC10),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'DATE',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: grey),
                                ),
                                Text(
                                  '21st Sept 2021, Monday',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: grey),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PICK-UP TIME',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: grey),
                                ),
                                Text(
                                  '9:00-9:30am',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'BOOK AGAIN',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: bg),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
