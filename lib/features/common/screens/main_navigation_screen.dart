import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:golf_yy/common/styles/colors.dart';
import 'package:golf_yy/features/timeline/views/timeline_screen.dart';

@RoutePage()
class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const TimelineScreen(),
    const TimelineScreen(),
    const TimelineScreen(),
    const TimelineScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.backgroundOnDarkMode,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppColors.backgroundOnDarkMode,
            icon: Icon(FontAwesomeIcons.house),
            label: 'Timeline',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.backgroundOnDarkMode,
            icon: Icon(FontAwesomeIcons.flagCheckered),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.backgroundOnDarkMode,
            icon: Icon(FontAwesomeIcons.chartBar),
            label: 'Score',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.backgroundOnDarkMode,
            icon: Icon(FontAwesomeIcons.user),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
