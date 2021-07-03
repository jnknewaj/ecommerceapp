import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/domain/shop/entities/shop.dart';
import 'package:ecommerce_app/utils/helper.dart';
import 'package:flutter/material.dart';

class ShopItem extends StatelessWidget {
  final double height;
  final Shop shop;

  const ShopItem({
    Key? key,
    required this.height,
    required this.shop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Helper.screenWidthPortion(
        context,
        time: 0.25,
      ),
      margin: const EdgeInsets.only(right: 5.0),
      child: Stack(
        children: [
          SizedBox(
            height: height * 0.82,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                imageUrl: shop.sellerItemPhoto,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    LinearProgressIndicator(
                  value: downloadProgress.progress,
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
                fadeInCurve: Curves.bounceIn,
                fadeInDuration: const Duration(milliseconds: 1000),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              child: Text(
                shop.sellerName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
