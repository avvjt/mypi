import 'package:flutter/material.dart';
import 'package:mypi/client/search.dart';
import 'package:mypi/constants/colors.dart';
import 'package:mypi/widgets/profile_card.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundLight,
          elevation: 0,
          title: const Text(
            'Mypi', // Set your title text
            style: TextStyle(
              fontFamily: 'YourCustomFont', // Use the custom font family name
              color: Colors.white, // Text color
              fontWeight: FontWeight.bold, // Make text bold
              fontSize: 24, // Set desired font size
            ),
          ),
        ),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Search()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundLight,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextField(
                  enabled:
                      false, // Disable the TextField so it doesn’t gain focus
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search services',
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    icon: Icon(Icons.search, color: Colors.grey[500]),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20.0),

          // Popular Services Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Popular Services',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child:
                      const Text('See All', style: TextStyle(color: AppColors.green)),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10.0),

          // Horizontal List of Services
          SizedBox(
            height: 180.0, // Increased height for both image and text sections
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0), // Add space at the start and end of the list
              itemBuilder: (context, index) {
                // Define a list of image paths
                final images = [
                  'lib/assets/photography.jpg',
                  'lib/assets/makeup.jpg',
                  'lib/assets/cinematography.jpg'
                ];

                return Container(
                  width: 160.0,
                  margin: const EdgeInsets.only(right: 10.0), // Spacing between items
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Image Section
                      Expanded(
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.vertical(top: Radius.circular(12.0)),
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Space above the text section
                      const SizedBox(height: 8.0),
                      // Text Section
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical:
                                8.0), // Additional padding inside the text section
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(12.0)),
                        ),
                        child: Text(
                          [
                            'Photography',
                            'Makeup Artists',
                            'Cinematography'
                          ][index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // Space below the text section
                      const SizedBox(height: 8.0),
                    ],
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20.0),

          // Image with Overlapping Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Stack(
              children: [
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage(
                          'lib/assets/photography.jpg'), // Add your featured image path here
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 20.0,
                  left: 16.0,
                  child: Text(
                    'Explore beautiful work, picked for you.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 10.0,
                  left: 16.0,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: const Text(
                      'MADE ON MYPI',
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20.0),

          // Profile Card
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: ProfileCard(),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
