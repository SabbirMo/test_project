import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:test_project/features/home/presentation/provider/provider.dart';
import 'package:test_project/features/home/presentation/view/home_screen.dart';

class CustomNavBar extends ConsumerWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavIndexProvider);
    final pages = [
      HomeScreen(),
      Center(
        child: Text('l'),
      ),
      Center(
        child: Text('m'),
      ),
      Center(
        child: Text('b'),
      ),
      Center(
        child: Text('p'),
      ),
    ];
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: GNav(
            backgroundColor: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color(0xff175CDE),
            padding: EdgeInsets.all(16),
            selectedIndex: currentIndex,
            onTabChange: (value) {
              ref.read(bottomNavIndexProvider.notifier).state = value;
            },
            gap: 10,
            tabs: [
              GButton(
                icon: Icons.home,
                leading: Image.asset('assets/icons/home.png'),
                text: 'Home',
              ),
              GButton(
                icon: Icons.home,
                leading: Image.asset('assets/icons/list.png'),
                text: 'List',
              ),
              GButton(
                icon: Icons.home,
                leading: Image.asset('assets/icons/mesg.png'),
                text: 'Message',
              ),
              GButton(
                icon: Icons.home,
                leading: Image.asset('assets/icons/beg.png'),
                text: 'Beg',
              ),
              GButton(
                icon: Icons.home,
                leading: Image.asset('assets/icons/profile.png'),
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
