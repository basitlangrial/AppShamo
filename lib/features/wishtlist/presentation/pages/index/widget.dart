import 'package:flutter/material.dart';
import 'package:flutter_starter/core/core.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: Dimens.dp20,
      ),
      padding: const EdgeInsets.all(Dimens.dp12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.dp12),
        color: AppColors.bgColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.dp12),
            child: Image.asset(
              MainAssets.product,
              width: Dimens.dp60,
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
                  'Terrex Urban Low',
                  style: AppTextStyle.primaryTextStyle.copyWith(
                    fontWeight: AppTextStyle.semiBold,
                  ),
                ),
                Text(
                  // ignore: use_raw_strings
                  '\$143,98',
                  style: AppTextStyle.priceTextStyle,
                ),
              ],
            ),
          ),
          Image.asset(
            MainAssets.loveActive,
            width: Dimens.dp34,
          ),
        ],
      ),
    );
  }
}
