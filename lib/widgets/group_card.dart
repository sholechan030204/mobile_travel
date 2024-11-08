import 'package:flutter/material.dart';
import '../models/travel_group.dart';

class GroupCard extends StatelessWidget {
  final TravelGroup group;

  const GroupCard({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(group.groupName),
        subtitle: Text(group.description),
        trailing: Text("\$${group.priceRange}"),
        onTap: () {
          // Navigate to group details or booking page
        },
      ),
    );
  }
}
