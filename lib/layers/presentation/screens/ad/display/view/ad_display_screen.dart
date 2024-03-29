import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/layouts/layout.dart';
import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/screens/profile/display/view/profile_screen.dart';
import 'package:buy_and_period/layers/presentation/shared/utils/format_date_time.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class AdDisplayScreen extends StatelessWidget {
  AdDisplayScreen(
    this.id, {
    super.key,
  }) : ad = ads[id];

  final int id;
  final Ad ad;

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Builder(
          builder: (context) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (ad.image != null)
                        Carousel(
                          visible: 2,
                          height: 205,
                          borderRadius: 28,
                          slideAnimationDuration: 500,
                          titleFadeAnimationDuration: 300,
                          children: [
                            CarouselItem(
                              image: ad.image!,
                            ),
                            CarouselItem(
                              image: ad.image!,
                            ),
                          ],
                        ),
                      if (ad.image != null) const SizedBox(height: 16),
                      DefaultTextStyle(
                        style:
                            TextStyle(color: Theme.of(context).colorScheme.outline, fontSize: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(formatDateTime(ad.postedAt)),
                            Text(ad.location),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(ad.title,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 22,
                              letterSpacing: -1,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 8),
                      Text(ad.price,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 24,
                              letterSpacing: -1,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 8),
                      Text('Описание',
                          style: TextStyle(color: Theme.of(context).colorScheme.outline, fontSize: 12)),
                      const SizedBox(height: 4),
                      Text(ad.description,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurfaceVariant, fontSize: 14)),
                    ],
                  ),
                ),
                const Divider(
                  indent: 0,
                  endIndent: 0,
                ),
                buildFooter(context)
              ],
            );
          }
        ),
      ),
    );
  }

  Widget buildFooter(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ProfileScreen(owner: false)));
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: DefaultTextStyle(
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontSize: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    Builder(
                      builder: (context) {
                        return CircleAvatar(
                          foregroundImage: NetworkImage(
                            ad.author.avatar,
                          ),
                          backgroundColor: Theme.of(context).brightness == Brightness.light
                                  ? PaletteLight.surfaceContainer
                                  : PaletteDark.surfaceContainer,
                        );
                      }
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ad.author.name,
                        ),
                        const SizedBox(height: 4),
                        Builder(
                          builder: (context) {
                            return DefaultTextStyle(
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.onSurfaceVariant, fontSize: 12),
                              child: Row(
                                children: [
                                  const Text('на купи - и точка с '),
                                  Text(DateFormat('MMMM yyyy', 'ru')
                                      .format(ad.author.joinedAt))
                                ],
                              ),
                            );
                          }
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    const Icon(Icons.email_outlined),
                    const SizedBox(width: 16),
                    Text(ad.author.email)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    const Icon(Icons.phone_outlined),
                    const SizedBox(width: 16),
                    Text(ad.author.phone)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
                ad.isOwner ? Icons.edit_outlined : Icons.favorite_outline)),
        const SizedBox(width: 4)
      ],
    );
  }
}
