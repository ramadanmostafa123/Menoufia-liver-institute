import 'package:flutter/material.dart';
import 'package:menofia_liver_institute/core/theming/colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: ColorManager.mainBlue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          Column(
            children: [
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Handle item tap
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Handle item tap
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Handle item tap
                  Navigator.pop(context); // Close the drawer
                },
              ),
              
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Handle item tap
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Handle item tap
                  Navigator.pop(context); // Close the drawer
                },
              ),
              
            ],
          ),
          // Add more list items as needed
        ],
      ),
    );
  }
}
