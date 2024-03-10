import 'package:buy_and_period/layers/presentation/screens/ad/display/view/ad_display_screen.dart';
import 'package:buy_and_period/layers/presentation/screens/auth/view/auth_screen.dart';
import 'package:buy_and_period/layers/presentation/screens/auth/view/reset_password/forget_password_screen.dart';
import 'package:buy_and_period/layers/presentation/screens/auth/view/reset_password/new_password_screen.dart';
import 'package:buy_and_period/layers/presentation/screens/auth/view/reset_password/otp_code_screen.dart';
import 'package:buy_and_period/layers/presentation/screens/favorite/view/favorite_screen.dart';
import 'package:buy_and_period/layers/presentation/screens/home/view/home_screen.dart';
import 'package:buy_and_period/layers/presentation/screens/splash/view/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class Routes {
  static const splash = 'splash';

  static const auth = 'auth';
  static const forgetPassword = 'forget-password';
  static const otpCode = 'otp-code';
  static const newPassword = 'new-password';

  static const home = 'home';
  static const favorite = 'favorite';
  // h (home) - ad display
  static const hAdDisplay = 'h-ad-display';
  // f (favorite) - ad display
  // for correct .pop(), and navigation stack
  static const fAdDisplay = 'f-ad-display';
}

final router = GoRouter(
  initialLocation: '/favorite',
  routes: [
    GoRoute(
      path: '/${Routes.splash}',
      name: Routes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
        path: '/${Routes.auth}',
        name: Routes.auth,
        builder: (context, state) => const AuthScreen(),
        routes: [
          GoRoute(
              path: Routes.forgetPassword,
              name: Routes.forgetPassword,
              builder: (context, state) => ForgetPasswordScreen(),
              routes: [
                GoRoute(
                    path: Routes.otpCode,
                    name: Routes.otpCode,
                    builder: (context, state) => OtpCodeScreen(),
                    routes: [
                      GoRoute(
                        path: Routes.newPassword,
                        name: Routes.newPassword,
                        builder: (context, state) => NewPasswordScreen(),
                      )
                    ])
              ]),
        ]),
    GoRoute(
        path: '/${Routes.home}',
        name: Routes.home,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: '${Routes.hAdDisplay}/:adId',
            name: Routes.hAdDisplay,
            builder: (context, state) =>
                AdDisplayScreen(int.parse(state.pathParameters['adId']!)),
          )
        ]),
    GoRoute(
        path: '/${Routes.favorite}',
        name: Routes.favorite,
        builder: (context, state) => const FavoriteScreen(),
        routes: [
          GoRoute(
            path: '${Routes.fAdDisplay}/:adId',
            name: Routes.fAdDisplay,
            builder: (context, state) =>
                AdDisplayScreen(int.parse(state.pathParameters['adId']!)),
          )
        ]),
  ],
);
