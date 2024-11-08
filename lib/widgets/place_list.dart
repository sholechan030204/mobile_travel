import 'package:flutter/material.dart';
import 'place_card.dart';
import '../models/travel_place.dart';

class PlaceList extends StatelessWidget {
  final List<TravelPlace> places;

  const PlaceList({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) {
        return PlaceCard(place: places[index]);
      },
    );
  }
}
