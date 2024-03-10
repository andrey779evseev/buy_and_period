import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var _currentIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = GoRouterState.of(context).name;
    switch (route) {
      case 'home':
        _currentIndex = 0;
        break;
      case 'favorite':
        _currentIndex = 1;
        break;
      default:
        _currentIndex = 2;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _currentIndex,
      onDestinationSelected: (index) {
        setState(() {
          _currentIndex = index;
        });
        switch (index) {
          case 0:
            context.replaceNamed(Routes.home);
            break;
          case 1:
            context.replaceNamed(Routes.favorite);
            break;
          default:
            context.replaceNamed(Routes.home);
            break;
        }
      },
      destinations: const [
        NavigationDestination(
            selectedIcon: Icon(
              Icons.assignment,
              color: Palette.onPrimaryContainer,
            ),
            icon: Icon(Icons.assignment_outlined),
            label: 'Объявления'),
        NavigationDestination(
            selectedIcon: Icon(
              Icons.favorite,
              color: Palette.onPrimaryContainer,
            ),
            icon: Icon(Icons.favorite_border),
            label: 'Избранное'),
        NavigationDestination(
            selectedIcon: Badge(
              label: Text('3'),
              child: Icon(
                Icons.account_circle,
                color: Palette.onPrimaryContainer,
              ),
            ),
            icon: Badge(
              label: Text('3'),
              child: Icon(Icons.account_circle_outlined),
            ),
            label: 'Профиль'),
      ],
    );
  }
}
