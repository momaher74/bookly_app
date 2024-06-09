import 'package:flutter/material.dart';
import 'package:ninja_animation/core/utils/constants.dart';

import '../../../../../core/utils/assets.dart';

class LikedWidgetCard extends StatelessWidget {
  const LikedWidgetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(context) * .2,
      child: AspectRatio(
        aspectRatio: 1.2 / 2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: AssetImage(AssetsData.testImg),
                fit: BoxFit.fill
            ),
          ),
        ),
      ),
    );
  }
}
