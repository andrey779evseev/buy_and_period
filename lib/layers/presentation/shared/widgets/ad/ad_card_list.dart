import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/ad/ad_card.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/empty_list_view.dart';
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
      child: ads.isNotEmpty ? buildListView() : buildEmptyView(),
    );
  }

  ListView buildListView() {
    return ListView.separated(
        itemCount: ads.length,
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemBuilder: ((context, index) {
          final item = ads[index];
          return AdCard(item: item);
        }));
  }

  Widget buildEmptyView() {
    return const EmptyListView(
      icon: Icons.add,
      title: 'У вас пока нет объявлений',
      description: Column(
        children: [
          Text(
            'Не упустите возможность!',
          ),
          Text(
            'Создайте и опубликуйте своё объявление прямо сейчас, чтобы предложить товары или услуги широкой аудитории.',
          )
        ],
      ),
    );
  }
}