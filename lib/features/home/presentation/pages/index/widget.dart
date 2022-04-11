import 'package:flutter/material.dart';
import 'package:flutter_starter/core/core.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.dp215,
      height: Dimens.dp278,
      margin: const EdgeInsets.only(
        right: Dimens.defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.dp20),
        color: AppColors.primaryTextColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: Dimens.dp30,
          ),
          Image.asset(
            MainAssets.product,
            width: Dimens.dp215,
            height: Dimens.dp150,
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: Dimens.dp20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hiking',
                  style: AppTextStyle.secondTextStyle.copyWith(
                    fontSize: Dimens.dp12,
                  ),
                ),
                const SizedBox(
                  height: Dimens.dp6,
                ),
                Text(
                  'COURT VISION 2.0',
                  style: AppTextStyle.blackTextStyle.copyWith(
                    fontSize: Dimens.dp18,
                    fontWeight: AppTextStyle.semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: Dimens.dp6,
                ),
                Text(
                  // ignore: use_raw_strings
                  '\$58,67',
                  style: AppTextStyle.priceTextStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: Dimens.defaultMargin,
        right: Dimens.defaultMargin,
        bottom: Dimens.defaultMargin,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.dp20),
            child: Image.asset(
              MainAssets.product,
              width: Dimens.dp120,
              height: Dimens.dp120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: Dimens.dp12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Football',
                  style: AppTextStyle.secondTextStyle,
                ),
                Text(
                  'Predator 20.3 Firm Ground',
                  style: AppTextStyle.primaryTextStyle.copyWith(
                    fontSize: Dimens.dp16,
                    fontWeight: AppTextStyle.semiBold,
                  ),
                ),
                Text(
                  // ignore: use_raw_strings
                  '\$68,47',
                  style: AppTextStyle.priceTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
