import 'dart:math';

import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/screens/ad/display/view/ad_display_screen.dart';
import 'package:buy_and_period/layers/presentation/shared/utils/format_date_time.dart';
import 'package:flutter/material.dart';

class AdCard extends StatelessWidget {
  const AdCard({
    super.key,
    required this.item,
  });

  final Ad item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AdDisplayScreen(Random().nextInt(4)),
        ));
      },
      child: Builder(builder: (context) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: Theme.of(context).colorScheme.outlineVariant,
                  width: 1)),
          child: Column(
            children: [
              if (item.image != null)
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    item.image!,
                    width: double.infinity,
                    height: 176,
                    fit: BoxFit.cover,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            item.title,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.onSurface,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: GestureDetector(
                            child: Icon(
                                item.isLiked
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: item.isLiked
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context).colorScheme.outline),
                            onTap: () {},
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    Text(item.price,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 22,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 8),
                    Text(item.location,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.outline,
                            fontSize: 14)),
                    Text(formatDateTime(item.postedAt),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.outline,
                            fontSize: 14)),
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
