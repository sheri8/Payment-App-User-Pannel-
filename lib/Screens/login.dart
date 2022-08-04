import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payment_app_userpanel/Screens/loading.dart';
import 'package:payment_app_userpanel/Screens/register.dart';
import 'package:payment_app_userpanel/Utils/colors.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Image.asset('assets/G (8) (1) 1.png'),
              SizedBox(height: 100),
              Text(
                'Login',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              textfield('Email Address'),
              textfield('Password'),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(36))),
                margin: EdgeInsets.only(top: 60, bottom: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Loading()));
                    },
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      primary: bg,
                    )),
              ),
              Text(
                'OR',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/g.png'),
                  SizedBox(width: 10),
                  Image.asset('assets/fb.png'),
                ],
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Register()));
                },
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  Padding textfield(String name) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: name,
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
