import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/layouts/layout.dart';
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
        body: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildNameField(context),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        buildPriceField(context),
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
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(0),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                constraints: const BoxConstraints(minHeight: 200),
                                hintText: 'Описание',
                                hintStyle: TextStyle(
                                  color: Theme.of(context).colorScheme.onSurface,
                                  fontSize: 16,
                                )),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.onSurface,
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
            );
          }
        ),
        bottomNavigationBar: buildBottomBar(context));
  }

  SafeArea buildBottomBar(BuildContext context) {
    return SafeArea(
      bottom: true,
      right: false,
      left: false,
      top: false,
      child: Builder(
        builder: (context) {
          return SizedBox(
            height: 48,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.photo_camera_outlined,
                          color: Theme.of(context).colorScheme.onSurface)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.photo_outlined,
                          color: Theme.of(context).colorScheme.onSurface)),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert_outlined,
                          color: Theme.of(context).colorScheme.onSurface)),
                ],
              ),
            ),
          );
        }
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
                                Border.all(color: Theme.of(context).colorScheme.surface, width: 1),
                            color: Theme.of(context).colorScheme.outline,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        clipBehavior: Clip.antiAlias,
                        width: 26,
                        height: 26,
                        child: Icon(Icons.close_outlined,
                            color: Theme.of(context).colorScheme.surface),
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

  TextField buildPriceField(BuildContext context) {
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
      style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant, fontSize: 16),
    );
  }

  TextField buildNameField(BuildContext context) {
    return TextField(
      controller: _name,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          constraints: const BoxConstraints(maxHeight: 36),
          hintText: 'Название',
          hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 28,
              height: 1,
              letterSpacing: -1,
              fontWeight: FontWeight.w500)),
      style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
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
