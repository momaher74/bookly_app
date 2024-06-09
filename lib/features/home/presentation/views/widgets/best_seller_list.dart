import 'package:flutter/material.dart';
import 'package:ninja_animation/core/utils/assets.dart';
import 'package:ninja_animation/features/home/presentation/views/book_details_view.dart';
import 'package:ninja_animation/features/home/presentation/views/widgets/rating_widget.dart';

class BooksListItem extends StatelessWidget {
  const BooksListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const BooksItemCard();
      },
      separatorBuilder: (context, index) => Container(
        width: double.infinity,
        height: 2,
        color: Colors.grey,
        margin: const EdgeInsets.symmetric(vertical: 15),
      ),
      itemCount: 5,
    );
  }
}

class BooksItemCard extends StatelessWidget {
  const BooksItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const BookDetailsView(),
          ),
        );
      },
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: Row(
          children: [
            AspectRatio(
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
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const Text(
                      'Harry potter and the goblet of fire ',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const Text(
                      'J K Rowling',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .2,
                        child: Text(
                          '99.99',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .045,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Spacer(),
                      const RatingWidget()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
