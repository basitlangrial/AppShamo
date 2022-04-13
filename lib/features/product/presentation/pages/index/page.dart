// ignore_for_file: lines_longer_than_80_chars

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_starter/core/core.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<String> images = [
    MainAssets.product,
    MainAssets.product,
    MainAssets.product,
  ];

  List<String> familiarShoes = [
    MainAssets.product,
    MainAssets.product,
    MainAssets.product,
    MainAssets.product,
    MainAssets.product,
    MainAssets.product,
    MainAssets.product,
    MainAssets.product,
    MainAssets.product,
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? Dimens.dp16 : Dimens.dp4,
        height: Dimens.dp4,
        margin: const EdgeInsets.symmetric(
          horizontal: Dimens.dp2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.dp10),
          color: currentIndex == index
              ? AppColors.primaryColor
              : AppColors.secondTextColor,
        ),
      );
    }

    Widget familiarShoesCard(String imageUrl) {
      return Container(
        width: Dimens.dp54,
        height: Dimens.dp54,
        margin: const EdgeInsets.symmetric(horizontal: Dimens.dp8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
          ),
          borderRadius: BorderRadius.circular(Dimens.dp6),
        ),
      );
    }

    Widget header() {
      var index = -1;

      return Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: Dimens.defaultMargin,
              vertical: Dimens.dp20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                    color: AppColors.bgColor1,
                  ),
                ),
                const Icon(
                  Icons.shopping_bag,
                  color: AppColors.bgColor1,
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (image) => Image.asset(
                    image,
                    width: Dimens.width(context),
                    height: Dimens.dp310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(
            height: Dimens.dp20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget content() {
      var index = -1;

      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.dp16,
        ),
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(Dimens.dp24),
          ),
          color: AppColors.bgColor1,
        ),
        child: Column(
          children: [
            // NOTE: HEADER
            Container(
              margin: const EdgeInsets.only(
                top: Dimens.defaultMargin,
                left: Dimens.defaultMargin,
                right: Dimens.defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TERREX URBAN LOW',
                          style: AppTextStyle.primaryTextStyle.copyWith(
                            fontSize: Dimens.dp18,
                            fontWeight: AppTextStyle.semiBold,
                          ),
                        ),
                        Text(
                          'HIKING',
                          style: AppTextStyle.secondTextStyle.copyWith(
                            fontSize: Dimens.dp12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    MainAssets.love,
                    width: Dimens.dp46,
                  ),
                ],
              ),
            ),

            // NOTE: PRICE
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: Dimens.dp20,
                left: Dimens.defaultMargin,
                right: Dimens.defaultMargin,
              ),
              padding: const EdgeInsets.all(Dimens.dp16),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(Dimens.dp4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price starts from',
                    style: AppTextStyle.primaryTextStyle,
                  ),
                  Text(
                    // ignore: use_raw_strings
                    '\$143,98',
                    style: AppTextStyle.priceTextStyle.copyWith(
                      fontSize: Dimens.dp16,
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(Dimens.defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: AppTextStyle.primaryTextStyle.copyWith(
                      fontWeight: AppTextStyle.medium,
                    ),
                  ),
                  const SizedBox(
                    height: Dimens.dp12,
                  ),
                  Text(
                    'Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.',
                    style: AppTextStyle.secondTextStyle.copyWith(
                      fontWeight: AppTextStyle.light,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            // NOTE: FAMILIAR SHOES
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.defaultMargin,
                    ),
                    child: Text(
                      'Familiar Shoes',
                      style: AppTextStyle.primaryTextStyle.copyWith(
                        fontWeight: AppTextStyle.medium,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: Dimens.dp12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: familiarShoes.map((image) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                            left: index == 0 ? Dimens.dp22 : 0,
                          ),
                          child: familiarShoesCard(image),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: BUTTON
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(Dimens.defaultMargin),
              child: Row(
                children: [
                  Container(
                    width: Dimens.dp54,
                    height: Dimens.dp54,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(MainAssets.buttonChat),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: Dimens.dp16,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: Dimens.dp54,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: AppColors.primaryTextColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Dimens.dp12),
                          ),
                          backgroundColor: AppColors.primaryColor,
                        ),
                        child: Text(
                          'Add to Cart',
                          style: AppTextStyle.primaryTextStyle.copyWith(
                            fontSize: Dimens.dp16,
                            fontWeight: AppTextStyle.semiBold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.bgColor6,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
