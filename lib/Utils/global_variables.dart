import 'package:flutter/material.dart';
import 'package:payment_app_userpanel/Bottom%20Navigation/Screens/lock.dart';
import 'package:payment_app_userpanel/Bottom%20Navigation/Screens/profile.dart';
import 'package:payment_app_userpanel/Bottom%20Navigation/Screens/search.dart';

import '../Bottom Navigation/Screens/home.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [Home(), Search(), MyOrder(), Profile()];
