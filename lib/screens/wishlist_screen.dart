import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  final List<String> wishlistDestinations = [
    'Santorini, Greece',
    'Kyoto, Japan',
    'Rome, Italy'
  ];

  WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Your Wishlist'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: wishlistDestinations.length,
        itemBuilder: (context, index) {
          final destination = wishlistDestinations[index];
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: const Icon(Icons.favorite, color: Colors.redAccent, size: 32),
              title: Text(
                destination,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                // Navigate to destination details
              },
            ),
          );
        },
      ),
    );
  }
}
