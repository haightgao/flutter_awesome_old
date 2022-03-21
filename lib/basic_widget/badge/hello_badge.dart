import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HelloBadge extends StatelessWidget {
  const HelloBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badge'),
      ),
      body: Center(
        child: Badge(
          badgeContent: const Text(
            '9',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          child: const Icon(Icons.access_time),
          badgeColor: Colors.green,
          position: BadgePosition.topEnd(),
          animationType: BadgeAnimationType.fade,
          animationDuration: const Duration(milliseconds: 250),
          toAnimate: false, // 停用动画
          showBadge: true, // 是否显示badge
        ),
      ),
    );
  }
}
