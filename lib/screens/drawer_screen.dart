import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Drawer Header
          Padding(
            padding: EdgeInsets.only(top: 70,left: 35,bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/images/habebagamal.jpg',
                        
                      ), // Replace with your profile image asset
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "Habeba Gamal",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    
                    ),
                  ],
                ),

          
              ],
            ),
          ),
          SizedBox(height: 35 ,),
          Divider(thickness: 0.5,color: Colors.grey,),
          SizedBox(height: 30 ,),


          // Drawer Items
          Column(
            children: [
              DrawerItem(
                icon: Icons.home_outlined,
                text: "Home",
                onTap: () {},
              ),
              DrawerItem(
                icon: Icons.topic_outlined,
                text: "Topics",
                onTap: () {},
              ),
              DrawerItem(
                icon: Icons.message_outlined,
                text: "Messages",
                onTap: () {},
              ),
              DrawerItem(
                icon: Icons.notifications_active_outlined,
                text: "Notifications",
                onTap: () {},
              ),
              DrawerItem(
                icon: Icons.bookmark_border_outlined,
                text: "Bookmarks",
                onTap: () {},
              ),
              DrawerItem(
                icon: Icons.person_2_outlined,
                text: "Profile",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatefulWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const DrawerItem({super.key, 
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  _DrawerItemState createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          color: isHovered ? Colors.grey.withOpacity(0.2) : Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 30),
          child: Row(
            children: [
              Icon(widget.icon, color: isHovered ? Colors.black : Color(0xff6c7072),size: 30,),
              const SizedBox(width: 20),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: isHovered? FontWeight.bold : FontWeight.w500,
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}