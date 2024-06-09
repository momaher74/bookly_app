import 'package:flutter/material.dart';

import '../../../../home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  Animation? animation;

  @override
  void initState() {
    initSlidingAnimation();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeView()));
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller!,
      builder: (BuildContext context, Widget? child) {
        return Align(
          alignment: animation!.value,
          child: Image.asset(
            'assets/images/Logo.png',
            width: MediaQuery.of(context).size.width * .6,
          ),
        );
      },
    );
  }

  void initSlidingAnimation() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    animation =
        Tween<Alignment>(begin: Alignment.bottomCenter, end: Alignment.center)
            .animate(controller!);
    controller!.forward();
  }
}
