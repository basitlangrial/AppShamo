import 'package:flutter/material.dart';
import 'package:flutter_starter/core/core.dart';
import 'package:flutter_starter/features/home/presentation/pages/index/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.defaultMargin,
          left: Dimens.defaultMargin,
          right: Dimens.defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Doni',
                    style: AppTextStyle.primaryTextStyle.copyWith(
                      fontSize: Dimens.dp24,
                      fontWeight: AppTextStyle.semiBold,
                    ),
                  ),
                  Text(
                    '@donisaputra00',
                    style: AppTextStyle.secondTextStyle.copyWith(
                      fontSize: Dimens.dp16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: Dimens.dp54,
              height: Dimens.dp54,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(MainAssets.profileCircle),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: Dimens.defaultMargin,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp12,
                  vertical: Dimens.dp10,
                ),
                margin: const EdgeInsets.only(
                  right: Dimens.dp16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.dp12),
                  color: AppColors.primaryColor,
                ),
                child: Text(
                  'All Shoes',
                  style: AppTextStyle.primaryTextStyle.copyWith(
                    fontSize: Dimens.dp13,
                    fontWeight: AppTextStyle.medium,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp12,
                  vertical: Dimens.dp10,
                ),
                margin: const EdgeInsets.only(
                  right: Dimens.dp16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.dp12),
                  border: Border.all(
                    color: AppColors.secondTextColor,
                  ),
                  color: Colors.transparent,
                ),
                child: Text(
                  'Running',
                  style: AppTextStyle.primaryTextStyle.copyWith(
                    fontSize: Dimens.dp13,
                    fontWeight: AppTextStyle.medium,
                    color: AppColors.secondTextColor,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp12,
                  vertical: Dimens.dp10,
                ),
                margin: const EdgeInsets.only(
                  right: Dimens.dp16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.dp12),
                  border: Border.all(
                    color: AppColors.secondTextColor,
                  ),
                  color: Colors.transparent,
                ),
                child: Text(
                  'Training',
                  style: AppTextStyle.primaryTextStyle.copyWith(
                    fontSize: Dimens.dp13,
                    fontWeight: AppTextStyle.medium,
                    color: AppColors.secondTextColor,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp12,
                  vertical: Dimens.dp10,
                ),
                margin: const EdgeInsets.only(
                  right: Dimens.dp16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.dp12),
                  border: Border.all(
                    color: AppColors.secondTextColor,
                  ),
                  color: Colors.transparent,
                ),
                child: Text(
                  'Basketball',
                  style: AppTextStyle.primaryTextStyle.copyWith(
                    fontSize: Dimens.dp13,
                    fontWeight: AppTextStyle.medium,
                    color: AppColors.secondTextColor,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp12,
                  vertical: Dimens.dp10,
                ),
                margin: const EdgeInsets.only(
                  right: Dimens.dp16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.dp12),
                  border: Border.all(
                    color: AppColors.secondTextColor,
                  ),
                  color: Colors.transparent,
                ),
                child: Text(
                  'Hiking',
                  style: AppTextStyle.primaryTextStyle.copyWith(
                    fontSize: Dimens.dp13,
                    fontWeight: AppTextStyle.medium,
                    color: AppColors.secondTextColor,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget popularTitle() {
      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.defaultMargin,
          right: Dimens.defaultMargin,
          left: Dimens.defaultMargin,
        ),
        child: Text(
          'Popular Products',
          style: AppTextStyle.primaryTextStyle.copyWith(
            fontSize: Dimens.dp22,
            fontWeight: AppTextStyle.semiBold,
          ),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.dp14,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: Dimens.defaultMargin,
              ),
              Row(
                children: const [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget arrivalTitle() {
      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.defaultMargin,
          right: Dimens.defaultMargin,
          left: Dimens.defaultMargin,
        ),
        child: Text(
          'New Arrivals',
          style: AppTextStyle.primaryTextStyle.copyWith(
            fontSize: Dimens.dp22,
            fontWeight: AppTextStyle.semiBold,
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.dp14,
        ),
        child: Column(
          children: const [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularTitle(),
        popularProducts(),
        arrivalTitle(),
        newArrivals(),
      ],
    );
  }
}
