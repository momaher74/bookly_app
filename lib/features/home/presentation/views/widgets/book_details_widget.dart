import 'package:flutter/material.dart';
import 'package:ninja_animation/core/utils/assets.dart';
import 'package:ninja_animation/core/utils/constants.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/details_text_widget.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/price_widget.dart';

class BookDetailsWidget extends StatelessWidget {
  const BookDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .35,
          child: AspectRatio(
            aspectRatio: 1.2 / 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(AssetsData.testImg),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: getScreenHeight(context) * .045,
        ),
        const DetailsTextWidget(),
        SizedBox(
          height: getScreenHeight(context) * .045,
        ),
        const PriceWidget(),
      ],
    );
  }
}
