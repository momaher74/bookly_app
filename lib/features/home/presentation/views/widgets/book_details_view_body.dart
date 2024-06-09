import 'package:flutter/material.dart';
import 'package:ninja_animation/core/utils/constants.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/book_details_widget.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/details_view_custom_app_bar.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/liked_books_list.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomDetailsViewAppBar(),
            const BookDetailsWidget(),
            SizedBox(
              height: getScreenHeight(context) * .06,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "You can also like ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getScreenWidth(context) * .04,
                      color: Colors.white),
                )),
            SizedBox(
              height: getScreenHeight(context) * .02,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: LikedBooksList(),
            ),
            SizedBox(
              height: getScreenHeight(context) * .02,
            ),
          ],
        ),
      ),
    );
  }
}

