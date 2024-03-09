import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/shared/layouts/data_layout.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/ad/ad_card_list.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DataLayout(
      body: TabBarView(
        children: [
          AdCardList(
            ads: ads.sublist(1, 3),
          ),
          const AdCardList(
            ads: [],
          )
        ],
      ),
      bottom: const TabBar(
        tabs: [
          Tab(
            text: 'Все',
          ),
          Tab(
            text: 'Мои',
          ),
        ],
      ),
    );
  }
}
