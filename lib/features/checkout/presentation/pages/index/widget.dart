import 'package:flutter/material.dart';
import 'package:flutter_starter/core/core.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: Dimens.dp12,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.dp12,
        vertical: Dimens.dp20,
      ),
      decoration: BoxDecoration(
        color: AppColors.bgColor4,
        borderRadius: BorderRadius.circular(Dimens.dp12),
      ),
      child: Row(
        children: [
          Container(
            width: Dimens.dp60,
            height: Dimens.dp60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.dp12),
              image: const DecorationImage(
                image: AssetImage(MainAssets.product),
              ),
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
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  // ignore: use_raw_strings
                  '\$143,98',
                  style: AppTextStyle.priceTextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: Dimens.dp12,
          ),
          Text(
            '2 Items',
            style: AppTextStyle.secondTextStyle.copyWith(
              fontSize: Dimens.dp12,
            ),
          ),
        ],
      ),
    );
  }
}
