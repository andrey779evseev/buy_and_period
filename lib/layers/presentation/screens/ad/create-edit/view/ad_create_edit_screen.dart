import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/layouts/layout.dart';
import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/select_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdEditCreateScreen extends StatelessWidget {
  AdEditCreateScreen({super.key});

  final _priceType = ValueNotifier(Price.rub);
  final _location = ValueNotifier(Location.Tiraspol);

  final _name = TextEditingController();
  final _price = TextEditingController(text: '0');
  final _description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Layout(
        appBar: buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildNameField(),
                const SizedBox(height: 12),
                Row(
                  children: [
                    buildPriceField(),
                    buildPriceTypeField(),
                    Expanded(child: Container()),
                    buildLocationField()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      TextField(
                        controller: _description,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            constraints: BoxConstraints(minHeight: 200),
                            hintText: 'Описание',
                            hintStyle: TextStyle(
                              color: Palette.onSurface,
                              fontSize: 16,
                            )),
                        style: const TextStyle(
                            color: Palette.onSurface,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 16),
                      buildImageList()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: buildBottomBar());
  }

  SafeArea buildBottomBar() {
    return SafeArea(
      bottom: true,
      right: false,
      left: false,
      top: false,
      child: SizedBox(
        height: 48,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.photo_camera_outlined,
                      color: Palette.onSurface)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.photo_outlined,
                      color: Palette.onSurface)),
              Expanded(child: Container()),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_outlined,
                      color: Palette.onSurface)),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildImageList() {
    return SizedBox(
      height: 125,
      width: double.infinity,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      image,
                      width: 160,
                      height: 125,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      right: -10,
                      top: -10,
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Palette.surface, width: 1),
                            color: Palette.outline,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        clipBehavior: Clip.antiAlias,
                        width: 26,
                        height: 26,
                        child: const Icon(Icons.close_outlined,
                            color: Palette.surface),
                      ))
                ],
              ),
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          itemCount: 2),
    );
  }

  ValueListenableBuilder<Location> buildLocationField() {
    return ValueListenableBuilder(
      valueListenable: _location,
      builder: (context, value, child) => SelectField(
          value: value,
          items: Location.values,
          onChange: (newValue) => _location.value = newValue),
    );
  }

  ValueListenableBuilder<Price> buildPriceTypeField() {
    return ValueListenableBuilder(
      valueListenable: _priceType,
      builder: (context, value, child) => SelectField(
        items: Price.values,
        value: value,
        onChange: (newValue) => _priceType.value = newValue,
      ),
    );
  }

  TextField buildPriceField() {
    return TextField(
      controller: _price,
      textAlign: TextAlign.end,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 12),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        constraints: BoxConstraints(maxWidth: 32),
      ),
      style: const TextStyle(color: Palette.onSurfaceVariant, fontSize: 16),
    );
  }

  TextField buildNameField() {
    return TextField(
      controller: _name,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          constraints: BoxConstraints(maxHeight: 36),
          hintText: 'Название',
          hintStyle: TextStyle(
              color: Palette.onSurface,
              fontSize: 28,
              height: 1,
              letterSpacing: -1,
              fontWeight: FontWeight.w500)),
      style: const TextStyle(
          color: Palette.onSurface,
          fontSize: 28,
          height: 1,
          letterSpacing: -1,
          fontWeight: FontWeight.w500),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back)),
      actions: [
        IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.check)),
        const SizedBox(width: 4)
      ],
    );
  }
}
