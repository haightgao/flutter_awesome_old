import 'package:flutter/material.dart';

class MaterialNavigatorBar extends StatefulWidget {
  const MaterialNavigatorBar({Key? key}) : super(key: key);

  @override
  State<MaterialNavigatorBar> createState() => _MaterialNavigatorBarState();
}

class _MaterialNavigatorBarState extends State<MaterialNavigatorBar> {
  int currentNavigationItemIndex = 0;

  final screens = const [
    Center(child: Text('Mail', style: TextStyle(fontSize: 72))),
    Center(child: Text('Chat', style: TextStyle(fontSize: 72))),
    Center(child: Text('Spaces', style: TextStyle(fontSize: 72))),
    Center(child: Text('Meet', style: TextStyle(fontSize: 72))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Navigator Bar'),
      ),
      body: screens[currentNavigationItemIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade200,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: const Color(0xFFf1f5fb),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          // animationDuration: const Duration(seconds: 3),
          selectedIndex: currentNavigationItemIndex,
          onDestinationSelected: (index) {
            setState(() {
              currentNavigationItemIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.email_outlined),
              selectedIcon: Icon(Icons.email),
              label: 'Mail',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat_bubble_outline),
              selectedIcon: Icon(Icons.chat_bubble),
              label: 'Chat',
            ),
            NavigationDestination(
              icon: Icon(Icons.group_outlined),
              selectedIcon: Icon(Icons.group),
              label: 'Spaces',
            ),
            NavigationDestination(
              icon: Icon(Icons.videocam_outlined, size: 30),
              selectedIcon: Icon(Icons.videocam, size: 30),
              label: 'Meet',
            ),
          ],
        ),
      ),
    );
  }
}
