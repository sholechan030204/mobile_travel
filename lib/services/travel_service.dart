import '../models/travel_place.dart';
import '../models/travel_group.dart';

class TravelService {
  final List<TravelPlace> _places = [
    TravelPlace(
      id: '1',
      name: 'Bali',
      description: 'A beautiful tropical paradise...',
      imageUrl: 'assets/images/bali.jpeg',
      price: 1999.00,
      duration: 8,
      maxGroupSize: 16,
    ),
    // Tambahkan tempat lain dengan ID unik
  ];

  final List<TravelGroup> _groups = [
    TravelGroup(
      id: 'g1',
      groupName: "Bali Getaway",
      description: "Experience Bali with a group of like-minded travelers.",
      destinations: ['1'], // ID dari tempat di atas
      priceRange: 1500.0,
      maxGroupSize: 12,
    ),
    // Tambahkan grup lain dengan ID unik
  ];

  List<TravelPlace> getPlaces() => _places;
  List<TravelGroup> getGroups() => _groups;

  TravelPlace getPlaceById(String id) =>
      _places.firstWhere((place) => place.id == id,
          orElse: () => TravelPlace(
                id: '',
                name: 'Unknown Place',
                description: 'This place is not available',
                imageUrl: 'assets/images/placeholder.jpg',
                price: 0.0,
                duration: 0,
                maxGroupSize: 0,
              ));

  TravelGroup getGroupById(String id) =>
      _groups.firstWhere((group) => group.id == id,
          orElse: () => TravelGroup(
                id: '',
                groupName: 'Unknown Group',
                description: 'This group is not available',
                destinations: [],
                priceRange: 0.0,
                maxGroupSize: 0,
              ));
}
