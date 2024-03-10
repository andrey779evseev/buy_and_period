import 'dart:math';

import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:buy_and_period/layers/presentation/shared/utils/format_date_time.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        final route = GoRouterState.of(context).name;
        context.goNamed(
            route == Routes.home ? Routes.hAdDisplay : Routes.fAdDisplay,
            pathParameters: {'adId': '${Random().nextInt(4)}'});
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Palette.outlineVariant, width: 1)),
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
                          style: const TextStyle(
                              color: Palette.onSurface,
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
                                  ? Palette.primary
                                  : Palette.outline),
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
                    style: const TextStyle(
                        color: Palette.onSurfaceVariant, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  Text(item.price,
                      style: const TextStyle(
                          color: Palette.onSurface,
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 8),
                  Text(item.location,
                      style: const TextStyle(
                          color: Palette.outline, fontSize: 14)),
                  Text(formatDateTime(item.postedAt),
                      style: const TextStyle(
                          color: Palette.outline, fontSize: 14)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
