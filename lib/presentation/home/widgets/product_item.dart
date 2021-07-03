import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'package:ecommerce_app/utils/helper.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final double height;
  final Product product;

  const ProductItem({
    Key? key,
    required this.height,
    required this.product,
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
            height: height * 0.72,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                imageUrl: product.productImage,
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
            bottom: 1.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.productName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Price: BDT ${product.unitPrice.toString()}',
                    style: const TextStyle(fontSize: 10.0),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
