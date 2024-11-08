class TravelGroup {
  final String id;
  final String groupName;
  final String description;
  final List<String> destinations; // List of destination IDs
  final double priceRange;
  final int maxGroupSize;

  TravelGroup({
    required this.id,
    required this.groupName,
    required this.description,
    required this.destinations,
    required this.priceRange,
    required this.maxGroupSize,
  });
}
