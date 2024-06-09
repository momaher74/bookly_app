import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninja_animation/core/utils/constants.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/best_seller_list.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/books_list.dart';
import 'package:ninja_animation/features/search/presentation/views/widgets/search_form_field_widget.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchFormFieldWidget(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Results',
                style: TextStyle(
                  fontSize: getScreenWidth(context) * .05,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: BooksListItem(),
            ),
          ],
        ),
      ),
    );
  }
}
