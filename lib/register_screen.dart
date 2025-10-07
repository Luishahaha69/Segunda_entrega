
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text('Register', style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: [
                  Row(children: [Expanded(child: TextFormField(decoration: InputDecoration(labelText: 'First Name', border: OutlineInputBorder()))), SizedBox(width:8), Expanded(child: TextFormField(decoration: InputDecoration(labelText: 'Last Name', border: OutlineInputBorder())))]),
                  SizedBox(height:12),
                  TextFormField(decoration: InputDecoration(labelText: 'E-mail', border: OutlineInputBorder())),
                  SizedBox(height:12),
                  TextFormField(obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder())),
                  SizedBox(height:12),
                  TextFormField(obscureText: true, decoration: InputDecoration(labelText: 'Confirm Password', border: OutlineInputBorder())),
                  SizedBox(height:20),
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () { Navigator.pushReplacementNamed(context, '/home'); }, child: Text('Create Account'))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
