import 'package:flutter/material.dart';

import 'screens/reset_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResetPasswordScreen(),
    );
  }
}






// Custom Search Delegate for Search Functionality
class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () => query = '')];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back), onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text('Search Results for "$query"'));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(child: Text('Suggestions for "$query"'));
  }
}
