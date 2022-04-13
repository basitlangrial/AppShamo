import 'package:flutter/material.dart';
import 'package:flutter_starter/core/core.dart';
import 'package:flutter_starter/features/wishtlist/presentation/pages/index/widget.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: AppColors.bgColor1,
        centerTitle: true,
        title: Text(
          'Favorite Shoes',
          style: AppTextStyle.primaryTextStyle,
        ),
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: AppColors.bgColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                MainAssets.wishlist,
                width: Dimens.dp74,
              ),
              const SizedBox(
                height: Dimens.dp22,
              ),
              Text(
                "You don't have dream shoes?",
                style: AppTextStyle.primaryTextStyle.copyWith(
                  fontWeight: AppTextStyle.medium,
                  fontSize: Dimens.dp16,
                ),
              ),
              const SizedBox(
                height: Dimens.dp12,
              ),
              Text(
                "Let's find your favorite shoes",
                style: AppTextStyle.secondTextStyle,
              ),
              const SizedBox(
                height: Dimens.dp20,
              ),
              SizedBox(
                height: Dimens.dp44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.dp24,
                      vertical: Dimens.dp10,
                    ),
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimens.dp12),
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: AppTextStyle.primaryTextStyle.copyWith(
                      fontSize: Dimens.dp16,
                      fontWeight: AppTextStyle.medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: AppColors.bgColor3,
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.defaultMargin,
              vertical: Dimens.dp10,
            ),
            children: const [
              WishlistCard(),
              WishlistCard(),
              WishlistCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyWishlist(),
        content(),
      ],
    );
  }
}
