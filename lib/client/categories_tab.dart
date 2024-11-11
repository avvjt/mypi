import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mypi/client/order.dart';
import 'package:mypi/client/services.dart';



class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        CategoryItem(
          title: "Graphics & Design",
          subtitle: "Logo & Brand Identity, Art & Illustration",
          icon: Icons.brush,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Services(),
                
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        CategoryItem(
          title: "Digital Marketing",
          subtitle: "Social Media Marketing, SEO",
          icon: Icons.campaign,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Services(),
              ),
            );
          },
        ),
      ],
    );
  }
}


class CategoryItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback? onTap; // Add onTap callback

  const CategoryItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap, // Set onTap to trigger navigation
      leading: Icon(icon, size: 36, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.grey),
      ),
      tileColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

