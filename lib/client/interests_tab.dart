import 'package:flutter/material.dart';

class InterestsTab extends StatelessWidget {
  const InterestsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "No Interests Added",
        style: TextStyle(fontSize: 18, color: Colors.grey),
      ),
    );
  }
}
