import 'package:flutter/material.dart';
import '../services/travel_service.dart';
import '../widgets/group_list.dart';

class TravelGroupScreen extends StatelessWidget {
  const TravelGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final travelGroups = TravelService().getGroups();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Travel Groups"),
      ),
      body: GroupList(groups: travelGroups),
    );
  }
}
