import 'package:flutter/material.dart';
import 'categories_tab.dart';
import 'interests_tab.dart';

void main() {
  runApp(const Search());
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Categories"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Categories"),
              Tab(text: "Interests"),
            ],
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.green,
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesTab(),
            InterestsTab(),
          ],
        ),
      ),
    );
  }
}
