import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/layouts/layout.dart';
import 'package:buy_and_period/layers/presentation/sheets/filters_bottom_sheet.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/nav_bar.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/nav_drawer.dart';
import 'package:flutter/material.dart';

class DataLayout extends StatelessWidget {
  const DataLayout({super.key, required this.body, this.bottom});

  final Widget body;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Layout(
          appBar: buildAppBar(context),
          body: body,
          bottomNavigationBar: const NavBar(),
          floatingActionButton: buildButton(),
          drawer: const NavDrawer(),
        ));
  }

  FloatingActionButton buildButton() {
    return FloatingActionButton.small(
      onPressed: () {},
      child: const Icon(
        Icons.add,
        color: Palette.onPrimaryContainer,
      ),
    );
  }

  void onFiltersTap(BuildContext context) {
    showModalBottomSheet(
      context: context,
      constraints: const BoxConstraints(maxHeight: 360),
      builder: (context) => FiltersBottomSheet(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: double.infinity,
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
        child: Row(
          children: [
            buildSearch(),
            const SizedBox(
              width: 8,
            ),
            IconButton.filled(
              onPressed: () => onFiltersTap(context),
              icon: const Icon(Icons.filter_alt_outlined),
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Palette.surfaceContainerHighest)),
            )
          ],
        ),
      ),
      bottom: bottom,
    );
  }

  Expanded buildSearch() {
    return Expanded(
        child: TextField(
      decoration: InputDecoration(
          hintText: 'Поиск обьявления',
          hintStyle: const TextStyle(
              color: Palette.onSurfaceVariant, fontWeight: FontWeight.w400),
          contentPadding: const EdgeInsets.all(12),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(28))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(28))),
          fillColor: Palette.surfaceContainerHigh,
          filled: true,
          prefixIcon: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                  )))),
    ));
  }
}