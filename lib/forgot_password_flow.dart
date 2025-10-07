
import 'package:flutter/material.dart';

class ForgotPasswordFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        Widget page = ForgotPasswordScreen();
        if (settings.name == '/verify') page = VerifyAccountScreen();
        if (settings.name == '/reset') page = CreateNewPasswordScreen();
        return MaterialPageRoute(builder: (_) => page);
      },
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  final _emailCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text('Forgot Password', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height:12),
            Text('No worries! Enter your email address below and we will send you a code to reset password'),
            SizedBox(height:18),
            TextField(controller: _emailCtrl, decoration: InputDecoration(labelText: 'E-mail', border: OutlineInputBorder())),
            Spacer(),
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Navigator.of(context).pushNamed('/verify'), child: Text('Send Reset Instruction'))),
          ],
        ),
      ),
    );
  }
}

class VerifyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text('Verify Account', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height:12),
            Text('Enter Code'),
            SizedBox(height:12),
            TextField(decoration: InputDecoration(labelText: '4 Digit Code', border: OutlineInputBorder())),
            Spacer(),
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Navigator.of(context).pushNamed('/reset'), child: Text('Verify Account'))),
          ],
        ),
      ),
    );
  }
}

class CreateNewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text('Create New Password', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height:12),
            TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder())),
            SizedBox(height:12),
            TextField(obscureText: true, decoration: InputDecoration(labelText: 'Confirm Password', border: OutlineInputBorder())),
            Spacer(),
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Navigator.pushReplacementNamed(context, '/login'), child: Text('Reset Password'))),
          ],
        ),
      ),
    );
  }
}
