import 'package:flutter/material.dart';
import 'package:ninja_animation/features/search/presentation/views/search_view.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(
            AssetsData.logo,
          ),
          width: MediaQuery.of(context).size.width * .25,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SearchView(),
              ),
            );
          },
          icon: Icon(
            Icons.search,
            size: MediaQuery.of(context).size.width * .08,
          ),
        ),
      ],
    );
  }
}
