import 'package:flutter/material.dart';
import 'package:pmm/screens/home/screen_home.dart';

class MoneyManagerBottomNavigation extends StatelessWidget {
  const MoneyManagerBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          currentIndex: updatedIndex,
          onTap: (newIndex) {
            ScreenHome.selectedIndexNotifier.value = newIndex;
          },
          items: const [
            
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Transaction',
            ),
            
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
          ],
        );
      },
    );
  }
}
