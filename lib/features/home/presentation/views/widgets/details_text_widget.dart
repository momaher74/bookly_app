import 'package:flutter/material.dart';
import 'package:ninja_animation/core/utils/constants.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/rating_widget.dart';

class DetailsTextWidget extends StatelessWidget {
  const DetailsTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: getScreenWidth(context) * .8,
          child: Text(
            'The Jungle Book ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: getScreenWidth(context) * .05,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: getScreenHeight(context) * .01,
        ),
        SizedBox(
          width: getScreenWidth(context) * .8,
          child: Text(
            'Rudyard kiplling',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey,
              fontSize: getScreenWidth(context) * .036,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: getScreenHeight(context) * .02,
        ),
        const Center(
          child: RatingWidget(),
        ),
      ],
    );
  }
}
