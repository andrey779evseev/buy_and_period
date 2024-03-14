import 'package:buy_and_period/layers/presentation/layouts/layout.dart';
import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/screens/ad/create-edit/view/ad_create_edit_screen.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/nav_bar.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/nav_drawer.dart';
import 'package:buy_and_period/layers/presentation/sheets/filters_bottom_sheet.dart';
import 'package:flutter/material.dart';

class DataLayout extends StatelessWidget {
  const DataLayout({super.key, required this.body, this.bottom, this.appBar});

  final Widget body;
  final PreferredSizeWidget? bottom;
  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Layout(
          appBar: appBar ?? buildAppBar(context),
          body: body,
          bottomNavigationBar: const NavBar(),
          floatingActionButton: buildButton(context),
          drawer: const NavDrawer(),
        ));
  }

  FloatingActionButton buildButton(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AdEditCreateScreen()));
      },
      child: Builder(
        builder: (context) {
          return Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          );
        }
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
      leadingWidth: 0,
      leading: const SizedBox.shrink(),
      title: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
        child: Row(
          children: [
            buildSearch(context),
            const SizedBox(
              width: 8,
            ),
            Builder(
              builder: (context) {
                return IconButton.filled(
                  onPressed: () => onFiltersTap(context),
                  icon: const Icon(Icons.filter_alt_outlined),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context).brightness == Brightness.light
                              ? PaletteLight.surfaceContainerHighest
                              : PaletteDark.surfaceContainerHighest)),
                );
              }
            )
          ],
        ),
      ),
      bottom: bottom,
    );
  }

  Expanded buildSearch(BuildContext context) {
    return Expanded(
        child: Builder(
          builder: (context) {
            return TextField(
                  decoration: InputDecoration(
              hintText: 'Поиск обьявления',
              hintStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w400),
              contentPadding: const EdgeInsets.all(12),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(28))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(28))),
              fillColor: Theme.of(context).brightness == Brightness.light
                  ? PaletteLight.surfaceContainerHighest
                  : PaletteDark.surfaceContainerHighest,
              filled: true,
              prefixIcon: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                      )))),
                );
          }
        ));
  }
}
