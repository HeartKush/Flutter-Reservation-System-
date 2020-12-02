import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:navbar/pages/navbar.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: BottomNavBar()));
}
