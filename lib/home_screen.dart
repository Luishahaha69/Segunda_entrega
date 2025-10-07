
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Coffee Home'), actions: [IconButton(icon: Icon(Icons.person), onPressed: () {})]),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Search coffee', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height:8),
            TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search coffee', border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
            SizedBox(height:12),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.78,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: List.generate(4, (i) => CoffeeCard(onTap: () => Navigator.pushNamed(context, '/detail'))),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
      ]),
    );
  }
}

class CoffeeCard extends StatelessWidget {
  final VoidCallback? onTap;
  const CoffeeCard({this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Expanded(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(12)), image: DecorationImage(image: AssetImage('assets/images/coffee_bg.jpg'), fit: BoxFit.cover)))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [Text('Caffe Mocha', style: TextStyle(fontWeight: FontWeight.bold)), SizedBox(height:6), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('\$4.53'), ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/order'), child: Text('+'))])]),
            )
          ],
        ),
      ),
    );
  }
}
