import 'package:core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatefulWidget {
  final String location;
  final Widget child;

  const BottomNavigation({super.key, required this.child, required this.location});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void onTap(BuildContext context, int index) {
    if(index == _currentIndex) return;

    setState(() {
      _currentIndex = index;
    });

    context.goNamed(routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          onTap(context, index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shopping'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'User'),
        ],
      ),
    );
  }
}
