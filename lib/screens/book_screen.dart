import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  final List<Map<String, dynamic>> travelPackages = [
    {
      'name': 'Bali Beach Getaway',
      'location': 'Bali, Indonesia',
      'price': 1299.00,
      'image': 'assets/images/bali.jpeg',
      'duration': '7 Days',
    },
    {
      'name': 'Explore Tokyo',
      'location': 'Tokyo, Japan',
      'price': 1799.00,
      'image': 'assets/images/tokyo.jpg',
      'duration': '5 Days',
    },
  ];

  BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Book Your Trip'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: travelPackages.length,
        itemBuilder: (context, index) {
          final package = travelPackages[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(
                    package['image'],
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(package['name'],
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Text(package['location'],
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[700])),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$${package['price']} - ${package['duration']}',
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.orange)),
                          ElevatedButton(
                            onPressed: () {
                              // Booking action
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('Book Now'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
