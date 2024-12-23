import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final int index;
  final bool animate;

  const NavBar({super.key, this.index = 0, this.animate = true});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with TickerProviderStateMixin {
  late List<AnimationController> _controllers;
  var currentIndex = -1;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(4, (index) {
      return AnimationController(
          vsync: this, duration: const Duration(seconds: 1));
    });

    currentIndex = widget.index;

    if (widget.animate) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _controllers[widget.index].forward();
      });
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(128),
              blurRadius: 25,
              offset: const Offset(8, 20))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
                selectedFontSize: 0.0,
                unselectedFontSize: 0.0,
                type: BottomNavigationBarType.fixed,
                elevation: 0.0,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                currentIndex: widget.index,
                landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
                onTap: (index) {
                  setState(() {
                    if (index == currentIndex && widget.animate) {
                      _controllers[index].reset();
                      _controllers[index].forward();
                      return;
                    }

                    currentIndex = index;

                    switch (index) {
                      case 0:
                        '/';
                        break;
                      case 1:
                        '/favorites';
                        break;
                      case 2:
                        '/swipe';
                        break;
                      case 3:
                        '/settings';
                        break;
                    }
                  });
                },

                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance),
                    label: 'Balance',
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}