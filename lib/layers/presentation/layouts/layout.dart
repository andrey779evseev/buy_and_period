import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout(
      {super.key,
      required this.appBar,
      required this.body,
      this.bottomNavigationBar,
      this.floatingActionButton,
      this.drawer});

  final AppBar appBar;
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      appBar: appBar,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: body,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      drawer: drawer,
    );
  }
}
