import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/card_list_view.dart';
import '../widgets/section_header.dart';
import 'drawer_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const AppDrawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    // Background Image
                    Container(
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/homepic.jpg'), // Replace with your image asset
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Dark Overlay
                    Container(
                      height: 300,
                      color: Colors.black.withOpacity(0.1),
                    ),
                    // Greeting Text
                   const Padding(
                      padding: const EdgeInsets.only(top: 60,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Habeba!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Let's Explore Cairo",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Profile Icon
                    Positioned(
                      top: 60,
                      right: 20,
                      child: Builder(
                        builder: (context) {
                          return GestureDetector(
                          onTap: () => Scaffold.of(context).openEndDrawer(),
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.45),
                              child: const Icon(Icons.person, color: Colors.blueGrey,size: 35,),
                            ),
                          );
                        }
                      ),
                    ),
                    // Search Bar Positioned on Image
                    
                    Padding(
                  padding: const EdgeInsets.only(top: 285),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFE4C2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SectionHeader(title: "Ancient Spotlight"),
                          const SizedBox(height: 10),
                           const CardListView(),
                          const SizedBox(height: 30),
                          SectionHeader(title: "Exclusive Packages"),
                           const SizedBox(height: 10),
                           const CardListView(),
                           const SizedBox(height: 30),
                          SectionHeader(title: "New Adventure, New Experience"),
                          const SizedBox(height: 10),
                          const CardListView(), 
                          const SizedBox(height: 30),
                          SectionHeader(title: "Highly Recommended"),
                          const SizedBox(height: 10),
                          const CardListView(),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 225,horizontal: 22),
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to Search Screen or Dialog
                      showSearch(
                        context: context,
                        delegate: CustomSearchDelegate(),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 43,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.66),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.search, color: Color.fromARGB(236, 30, 30, 30)),
                          SizedBox(width: 10),
                          Text(
                            "Find the Most Beautiful & Historic Places",
                            style: TextStyle(color: Color.fromARGB(197, 30, 30, 30)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                  ],
                ),
                // Content Section
                
              ],
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                      decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.61),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black87, // Active icon color
              unselectedItemColor: const Color.fromARGB(198, 0, 0, 0), // Inactive icon color
              currentIndex: 0,
               onTap: (index) {
          if (index == 3) {
            // Navigate to the ProfileScreen when the "Person" icon is clicked
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
                 );
                }
               },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: ''),
              ],
                      ),
                    ),
            ],
          ),
        ],
      ),
      
    );
  }
}