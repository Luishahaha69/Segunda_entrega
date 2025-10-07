
import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'forgot_password_flow.dart';
import 'home_screen.dart';
import 'detail_screen.dart';
import 'order_screen.dart';
import 'delivery_screen.dart';
import 'theme.dart';

void main() => runApp(CoffeeApp());

class CoffeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'proyectojajaluis_final',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (ctx) => WelcomeScreen(),
        '/login': (ctx) => LoginScreen(),
        '/register': (ctx) => RegisterScreen(),
        '/forgot_flow': (ctx) => ForgotPasswordFlow(),
        '/home': (ctx) => HomeScreen(),
        '/detail': (ctx) => DetailScreen(),
        '/order': (ctx) => OrderScreen(),
        '/delivery': (ctx) => DeliveryScreen(),
      },
    );
  }
}
