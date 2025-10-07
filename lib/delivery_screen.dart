
import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delivery')),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(child: Center(child: Icon(Icons.map, size: 120, color: Colors.grey))),
            Text('10 minutes left', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height:12),
            ListTile(leading: CircleAvatar(child: Icon(Icons.person)), title: Text('Brooklyn Simmons'), subtitle: Text('Personal Courier')),
            SizedBox(height:12),
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/home')), child: Text('Done'))),
          ],
        ),
      ),
    );
  }
}
