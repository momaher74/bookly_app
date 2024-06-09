import 'package:flutter/material.dart';
import 'package:ninja_animation/core/utils/styels.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/books_list.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              const BooksList(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              const Text(
                'Best Seller',
                style: AppTextStyles.smallHeadTitle,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              const BooksList(),
            ],
          ),
        ),
      ),
    );
  }
}

