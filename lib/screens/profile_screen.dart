import 'package:flutter/material.dart';

import 'home_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE4C2), // Background color of the screen
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(15), // Custom height
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Profile Header Section
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 160),
                      child: Container(
                        width: double.infinity, // Takes full width of the screen
                        padding: const EdgeInsets.only(
                            right: 5, left: 15, top: 20, bottom: 15),
                        decoration: const BoxDecoration(
                          color: Colors.white, // Background color of the container
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: Colors.black, width: 1.5),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: const Text(
                                      "Edit profile",
                                      style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              "Habeba Gamal",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "@Habebag",
                              style: TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "📅 Joined Oct 2024",
                              style: TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            const SizedBox(height: 5),
                            const Row(
                              children: [
                                Text(
                                  "0 Followers",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "0 Following",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Cover Photo
                    Container(
                      height: 180,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/backgraund.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
          
                    // Profile Photo
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 130,
                      ),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage("assets/images/habebagamal.jpg"),
                      ),
                    ),
                  ],
                ),
                // Posts Section
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2, // Adjust this number for the number of posts
                  itemBuilder: (context, index) {
                    return const PostCard();
                  },
                ),
              ],
            ),
          ),

           Column(
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Container(
                       height: 70,
                       decoration: BoxDecoration(
                         color: Colors.white.withOpacity(0.61),
                         borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                       ),
                       child: BottomNavigationBar(
                         backgroundColor: Colors.transparent,
                         elevation: 0,
                         type: BottomNavigationBarType.fixed,
                         selectedItemColor: Colors.black, // Active icon color
                         unselectedItemColor:
                  const Color.fromARGB(198, 0, 0, 0), // Inactive icon color
                         currentIndex: 3,
                         onTap: (index) {
                if (index == 0) {
                  // Navigate to the HomeScreen when the "Home" icon is clicked
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }
                         },
                         items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined), label: ''),
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

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Background color for posts
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/habebagamal.jpg"),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Habeba Gamal",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "@HabebaG • Nov 4",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Khan el-Khalili is highly recommended. Place y’all need to visit!",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.comment, size: 18),
                Text("130"),
                SizedBox(width: 30),
                Icon(Icons.favorite, size: 18),
                Text("1k"),
                SizedBox(width: 30),
                Icon(Icons.share, size: 18),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
