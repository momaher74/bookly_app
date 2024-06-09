import 'package:flutter/material.dart';
import 'package:ninja_animation/core/utils/constants.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/liked_books_card.dart';

class LikedBooksList extends StatelessWidget {
  const LikedBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getScreenHeight(context) * .15,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const LikedWidgetCard();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: 10,
      ),
    );
  }
}
