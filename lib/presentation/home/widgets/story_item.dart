import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/domain/story/entities/story.dart';
import 'package:ecommerce_app/utils/helper.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final Story story;

  const StoryItem({Key? key, required this.story}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _height = Helper.screenHeightPortion(context, time: 0.5);

    return Container(
      margin: const EdgeInsets.only(
        top: 4.0,
        bottom: 8.0,
      ),
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 5.0,
        left: 8.0,
      ),
      height: _height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1st row --> dp, name, time ago
          Row(
            children: [
              CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(
                  story.shopLogo,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      story.shopName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      story.friendlyTimeDiff,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // text
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(story.story),
          ),
          // image
          SizedBox(
            height: _height * 0.65,
            width: Helper.getScreenWidth(context),
            child: CachedNetworkImage(
              imageUrl: story.storyImage,
              fit: BoxFit.fitHeight,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  LinearProgressIndicator(
                value: downloadProgress.progress,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fadeInCurve: Curves.bounceIn,
              fadeInDuration: const Duration(milliseconds: 1000),
            ),
          ),
          // price, stoce, orders
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // price
                Row(
                  children: [
                    const Icon(Icons.shopping_bag),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'BDT ${story.unitPrice}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
                // stock
                Row(
                  children: [
                    const Icon(Icons.list_sharp),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'Available Stock ${story.availableStock}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
                // orders
                Row(
                  children: [
                    const Icon(Icons.shopping_cart),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        '${story.unitPrice} Order(s)',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
