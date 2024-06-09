import 'package:flutter/material.dart';
import 'package:ninja_animation/core/utils/assets.dart';

class BooksList extends StatelessWidget {
  const BooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 4.5,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const BooksCardWidget();
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 10,
        ),
        itemCount: 4,
      ),
    );
  }
}

class BooksCardWidget extends StatelessWidget {
  const BooksCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 1 / 1.8,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AssetsData.testImg,
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
        ),
      ),
    );
  }
}

