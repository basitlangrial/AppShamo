import 'package:flutter/material.dart';
import 'package:flutter_starter/core/core.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: Dimens.defaultMargin),
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.dp16,
        vertical: Dimens.dp10,
      ),
      decoration: BoxDecoration(
        color: AppColors.bgColor4,
        borderRadius: BorderRadius.circular(Dimens.dp12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: Dimens.dp60,
                height: Dimens.dp60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.dp12),
                  image: const DecorationImage(
                    image: AssetImage(MainAssets.product),
                    fit: BoxFit.cover,
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
                        fontWeight: AppTextStyle.medium,
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
              Column(
                children: [
                  Image.asset(
                    MainAssets.plus,
                    width: Dimens.dp16,
                  ),
                  const SizedBox(
                    height: Dimens.dp4,
                  ),
                  Text(
                    '2',
                    style: AppTextStyle.primaryTextStyle.copyWith(
                      fontWeight: AppTextStyle.medium,
                    ),
                  ),
                  const SizedBox(
                    height: Dimens.dp4,
                  ),
                  Image.asset(
                    MainAssets.min,
                    width: Dimens.dp16,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: Dimens.dp12,
          ),
          Row(
            children: [
              Image.asset(
                MainAssets.trash,
                width: Dimens.dp10,
              ),
              const SizedBox(
                width: Dimens.dp6,
              ),
              Text(
                'Remove',
                style: AppTextStyle.primaryTextStyle.copyWith(
                  color: AppColors.alertColor,
                  fontSize: Dimens.dp12,
                  fontWeight: AppTextStyle.light,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
