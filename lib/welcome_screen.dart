
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/coffee_bg.jpg', fit: BoxFit.cover),
          Container(color: Colors.black.withOpacity(0.45)),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 3),
                  Text(
                    'Fall in Love with\nCoffee in Blissful\nDelight!',
                    style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  Text('Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  Spacer(flex: 4),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
                      child: Text('Get Started', style: TextStyle(fontSize: 16)),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFD59263),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
