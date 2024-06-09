import 'package:flutter/material.dart';
import 'package:ninja_animation/features/splash_feature/presentaion/views/widget/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
