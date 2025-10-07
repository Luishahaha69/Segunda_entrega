
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order')),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text('Delivery Address', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height:8),
            Card(child: ListTile(title: Text('Jl. Kpg Sutoyo'), subtitle: Text('Edit Address'))),
            SizedBox(height:12),
            Expanded(child: Center(child: Text('Cart items here...'))),
            SizedBox(height:12),
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/delivery'), child: Text('Order'))),
          ],
        ),
      ),
    );
  }
}
