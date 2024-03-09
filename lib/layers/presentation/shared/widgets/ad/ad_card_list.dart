import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/ad/ad_card.dart';
import 'package:flutter/material.dart';

class AdCardList extends StatelessWidget {
  const AdCardList({
    super.key,
    required this.ads,
  });

  final List<Ad> ads;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: ads.isNotEmpty
          ? ListView.separated(
              itemCount: ads.length,
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemBuilder: ((context, index) {
                final item = ads[index];
                return AdCard(item: item);
              }))
          : buildEmptyView(),
    );
  }

  Padding buildEmptyView() {
    return const Padding(
      padding: EdgeInsets.only(top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.add, size: 120),
          SizedBox(height: 16),
          Text('У вас пока нет объявлений',
              style: TextStyle(
                  color: Palette.onSurface,
                  fontSize: 22,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 16),
          Text(
            'Не упустите возможность!',
            style: TextStyle(color: Palette.onSurfaceVariant),
          ),
          Text(
            'Создайте и опубликуйте своё объявление прямо сейчас, чтобы предложить товары или услуги широкой аудитории.',
            style: TextStyle(
              color: Palette.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
