import 'package:flutter/material.dart';
import 'package:multi_vendor_ecommerce/main_screens/customer_home_screen.dart';

import 'main_screens/supplier_home_screen.dart';
import 'main_screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WelcomeScreen(),
      initialRoute: '/welcome_screen',
      routes: {
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/customer_home_screen': (context) => const CustomerHomeScreen(),
        '/supplier_home_screen': (context) => const SupplierHomeScreen(),
      },
    );
  }
}
