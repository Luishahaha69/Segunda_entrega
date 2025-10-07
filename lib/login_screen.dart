
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Login', style: Theme.of(context).textTheme.headline5),
            SizedBox(height: 18),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'E-mail', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                    onSaved: (v) => email = v ?? '',
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    obscureText: obsecure,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      suffixIcon: IconButton(icon: Icon(obsecure? Icons.visibility_off : Icons.visibility), onPressed: () { setState(() { obsecure = !obsecure; }); }),
                    ),
                    onSaved: (v) => password = v ?? '',
                  ),
                  Align(alignment: Alignment.centerRight, child: TextButton(onPressed: () => Navigator.pushNamed(context, '/forgot_flow'), child: Text('Forgot Password?'))),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () { _formKey.currentState?.save(); Navigator.pushReplacementNamed(context, '/home'); }, child: Text('Login')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
