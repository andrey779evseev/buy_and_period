import 'package:buy_and_period/layers/presentation/shared/layouts/layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout(
      {super.key,
      required this.body,
      this.onBack,
      this.title,
      this.bottom});

  final Widget body;
  final void Function()? onBack;
  final Widget? title;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    final onBackFn = onBack ?? () {
      context.pop();
    };

    return Layout(
      appBar: AppBar(
        leading: IconButton(
            onPressed: onBackFn,
            icon: const Icon(
              Icons.arrow_back,
            )),
        title: title,
        actions: [
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.translate,
              )),
        ],
        bottom: bottom,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 100, 16, 16),
        child: body,
      ),
    );
  }
}
