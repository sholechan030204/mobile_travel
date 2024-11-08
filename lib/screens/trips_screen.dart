import 'package:flutter/material.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header with the background image and title
          Container(
            height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/trips_bg.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.4),
              child: const Center(
                child: Text(
                  'Your Trips',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                _buildTripCard('Bali Beach Getaway', 'Upcoming'),
                const SizedBox(height: 16),
                _buildTripCard('Tokyo Adventure', 'Completed'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTripCard(String tripName, String status) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tripName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Chip(
              label: Text(
                status,
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor:
                  status == 'Upcoming' ? Colors.green : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
