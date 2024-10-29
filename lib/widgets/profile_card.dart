import 'package:flutter/material.dart';
import 'package:mypi/constants/colors.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16), // Ensure all corners are rounded
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundLight,
          borderRadius:
              BorderRadius.circular(16), // Ensure all corners are rounded
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Column for the content
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Horizontal Images Row
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'lib/assets/photography.jpg',
                        fit: BoxFit.cover,
                        height: 100, // Adjust height as needed
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'lib/assets/makeup.jpg',
                        fit: BoxFit.cover,
                        height: 100, // Adjust height as needed
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'lib/assets/cinematography.jpg',
                        fit: BoxFit.cover,
                        height: 100, // Adjust height as needed
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'lib/assets/photography.jpg',
                        fit: BoxFit.cover,
                        height: 100, // Adjust height as needed
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Space below for the profile icon

                // Name and Location
                const Text(
                  'Abhi Jit',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Colors.grey, size: 16),
                    SizedBox(width: 4),
                    Text(
                      'Kolkata',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 4),

                // Price Status
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Starting from ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(Icons.currency_rupee, color: Colors.grey, size: 16),
                    Text(
                      '5000',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

                SizedBox(height: 16),

                // Badges
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Badge(text: '4.6', color: Colors.blue), // Star icon is included automatically
    SizedBox(width: 8),
    Badge(text: '1 Project Completed', color: Colors.grey[800]!),
  ],
),

                SizedBox(height: 20), // Add space at the bottom
              ],
            ),

            // Circular profile icon overlapping the row
            Positioned(
              top:
                  40, // Half of CircleAvatar's height (30) plus some extra space
              child: CircleAvatar(
                radius: 30, // Radius of the circular profile icon
                backgroundColor: Colors.black,
                child: Icon(Icons.person, size: 32, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Badge extends StatelessWidget {
  final String text;
  final Color color;

  Badge({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Use min size to fit content
        children: [
          Icon(Icons.star, size: 16, color: Colors.white), // Always show the star icon
          SizedBox(width: 4), // Space between the icon and the text
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}