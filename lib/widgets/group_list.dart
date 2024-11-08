import 'package:flutter/material.dart';
import '../models/travel_group.dart';
import 'group_card.dart';

class GroupList extends StatelessWidget {
  final List<TravelGroup> groups;

  const GroupList({super.key, required this.groups});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groups.length,
      itemBuilder: (context, index) {
        return GroupCard(group: groups[index]);
      },
    );
  }
}
