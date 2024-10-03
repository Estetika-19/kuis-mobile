import 'package:flutter/material.dart';
import 'package:flutter_kuis/pemesanan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Blue Doorz',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            const SizedBox(height: 5),
            SizedBox(
              height: 20,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/asfararikza/assets_bluedoorz/refs/heads/main/BLUE%20DOORZ.png',
                    width: 50,
                    height: 50,
                  ),
                  Text('Welcome To Blue Doorz')
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Center the product in GridView with one item
            Expanded(
              child: Center(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.5, // Adjust the aspect ratio
                  padding: const EdgeInsets.all(16),
                  children: [
                    _buildProductItem(context),
                    _buildProductItem(context),
                    _buildProductItem(context),
                    _buildProductItem(context),
                    _buildProductItem(context),
                    _buildProductItem(context),
                    _buildProductItem(context),
                    _buildProductItem(context),
                    _buildProductItem(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductItem(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
            'https://raw.githubusercontent.com/asfararikza/assets_bluedoorz/refs/heads/main/hotel.jpg'),
        const SizedBox(height: 10),
        const Text('Blue Lagoon Hotel', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Pemesanan(
                productName: 'Blue Lagoon',
                productDescription: 'Rp 500,000,',
                productImagePath:
                    'https://raw.githubusercontent.com/asfararikza/assets_bluedoorz/refs/heads/main/hotel.jpg',
              );
            }));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            fixedSize: const Size(100, 20),
            padding: const EdgeInsets.symmetric(horizontal: 5),
          ),
          child:
              const Text('Booking Now', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
