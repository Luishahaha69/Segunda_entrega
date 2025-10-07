
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(height:200, decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), image: DecorationImage(image: AssetImage('assets/images/coffee_bg.jpg'), fit: BoxFit.cover))),
            SizedBox(height:12),
            Text('Caffe Mocha', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height:8),
            Text('A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the foam.'),
            Spacer(),
            Row(children: [Expanded(child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/order'), child: Text('Buy Now')))])
          ],
        ),
      ),
    );
  }
}
