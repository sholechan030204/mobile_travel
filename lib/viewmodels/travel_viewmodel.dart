import 'package:flutter/material.dart';
import '../models/travel_place.dart';
import '../services/travel_service.dart';

class TravelViewModel extends ChangeNotifier {
  final TravelService _travelService = TravelService();
  List<TravelPlace> places = [];

  TravelViewModel() {
    fetchPlaces();
  }

  void fetchPlaces() {
    places = _travelService.getPlaces();
    notifyListeners();
  }
}
