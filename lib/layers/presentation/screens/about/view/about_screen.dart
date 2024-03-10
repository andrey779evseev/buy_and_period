import 'package:buy_and_period/layers/presentation/layouts/layout.dart';
import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                context.replaceNamed(Routes.home);
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text('О приложении',
              style: TextStyle(
                  color: Palette.onSurface,
                  fontSize: 22,
                  fontWeight: FontWeight.w500)),
          titleSpacing: 0,
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: DefaultTextStyle(
              style: const TextStyle(color: Palette.onSurfaceVariant),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                            color: Palette.onSurfaceVariant,
                          ),
                          children: [
                        TextSpan(text: 'Добро пожаловать в '),
                        TextSpan(
                            text: 'Купи - и точка!',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(
                            text:
                                ' – ваш универсальный помощник в мире объявлений! Наше приложение предоставляет удобный и безопасный способ купить или продать практически что угодно, от бытовой техники до недвижимости и автомобилей.'),
                      ])),
                  const SizedBox(height: 8),
                  const Text(
                      'Здесь вы найдете широкий выбор товаров и услуг, предлагаемых как частными лицами, так и компаниями. Будь то поиск квартиры, покупка машины или выбор исполнителя для домашних работ – все это доступно в несколько кликов.'),
                  const SizedBox(height: 8),
                  const Text('Особенности приложения:',
                      style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 8),
                  buildListItem('Разнообразие Категорий: ',
                      'От недвижимости и автомобилей до бытовой техники и одежды.'),
                  buildListItem('Поиск и Фильтры: ',
                      'Настройте фильтры поиска, чтобы быстро найти то, что вам нужно.'),
                  buildListItem('Безопасность: ',
                      'Мы прилагаем все усилия, чтобы сделать сделки безопасными и прозрачными.'),
                  buildListItem('Легкость Публикации Объявлений: ',
                      'Продавайте ваши товары, публикуя объявления легко и быстро.'),
                  buildListItem('Личный Кабинет: ',
                      'Управляйте своими объявлениями и настройками через персональный аккаунт.'),
                  const SizedBox(
                    height: 8,
                  ),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                            color: Palette.onSurfaceVariant,
                          ),
                          children: [
                        TextSpan(text: 'В '),
                        TextSpan(
                            text: 'Купи - и точка!',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(
                            text:
                                ' мы стремимся предоставить вам лучший опыт покупок и продаж. Постоянные обновления и улучшения делают наше приложение еще удобнее и функциональнее.'),
                      ])),
                  const SizedBox(
                    height: 8,
                  ),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                            color: Palette.onSurfaceVariant,
                          ),
                          children: [
                        TextSpan(text: 'Спасибо, что выбрали '),
                        TextSpan(
                            text: 'Купи - и точка!',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(
                            text:
                                ' Мы рады помочь вам сделать удачные сделки.'),
                      ])),
                ],
              ),
            ),
          ),
        ));
  }

  Widget buildListItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('•', style: TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(width: 4),
          Expanded(
            child: RichText(
                text: TextSpan(
                    style: const TextStyle(
                      color: Palette.onSurfaceVariant,
                    ),
                    children: [
                  TextSpan(
                      text: title,
                      style: const TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(
                    text: description,
                  ),
                ])),
          )
        ],
      ),
    );
  }
}
