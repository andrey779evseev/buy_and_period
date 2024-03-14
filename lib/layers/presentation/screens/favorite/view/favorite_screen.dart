import 'dart:math';

import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/layouts/data_layout.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/ad/ad_card_list.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/empty_list_view.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items =
        Random().nextInt(2) == 1 ? List<Ad>.empty() : ads.sublist(1, 3);

    return DataLayout(
      appBar: items.isEmpty
          ? AppBar(
              leadingWidth: double.infinity,
              leading: Padding(
                padding: EdgeInsets.only(top: 28, left: 16),
                child: Text('Избранное',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 28,
                        letterSpacing: -1.5,
                        fontWeight: FontWeight.w500)),
              ))
          : null,
      body: items.isNotEmpty
          ? AdCardList(
              ads: items,
            )
          : const EmptyListView(
              icon: Icons.favorite,
              title: 'Добавьте объявления в избранное',
              description: Text('Вы можете вернуться к ним позже')),
    );
  }
}
