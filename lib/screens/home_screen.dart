import 'package:flutter/material.dart';
import 'package:travel_apk/screens/place_detail_screen.dart';
import 'package:travel_apk/widgets/place_card.dart';
import '../models/travel_place.dart';
import '../widgets/search_bar.dart' as custom_widgets;

class HomeScreen extends StatelessWidget {
  final List<TravelPlace> recommendedPlaces = [
    TravelPlace(
      id: '1',
      name: 'Bali',
      description: 'Explore Bali\'s beaches, temples, and vibrant culture.',
      imageUrl: 'assets/images/bali.jpeg',
      price: 1999.00,
      duration: 8,
      maxGroupSize: 16,
    ),
    TravelPlace(
      id: '2',
      name: 'Tokyo',
      description: 'Explore Tokyo, temples, and vibrant culture.',
      imageUrl: 'assets/images/tokyo.jpg',
      price: 1799.00,
      duration: 5,
      maxGroupSize: 16,
    ),
    // Add more places as needed
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    custom_widgets.SearchBar(),
                    const SizedBox(height: 20),
                    const Text(
                      "Discover your next\nluxury escape",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Explore unique destinations personalized just for you",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to exploration page
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        "Start Exploring Now",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Your essential travel companion",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        _buildCategoryChip('Africa'),
                        _buildCategoryChip('Asia'),
                        _buildCategoryChip('Europe'),
                        _buildCategoryChip('South America'),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Recommended for you",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final place = recommendedPlaces[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PlaceDetailsScreen(place: place),
                          ),
                        );
                      },
                      child: PlaceCard(place: place),
                    );
                  },
                  childCount: recommendedPlaces.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}
