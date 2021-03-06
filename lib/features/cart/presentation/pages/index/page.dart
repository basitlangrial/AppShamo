import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_starter/app/routes.dart';
import 'package:flutter_starter/core/core.dart';
import 'package:flutter_starter/features/cart/presentation/pages/index/widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    );

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: AppColors.bgColor1,
        centerTitle: true,
        title: Text(
          'Your Cart',
          style: AppTextStyle.primaryTextStyle,
        ),
      );
    }

    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MainAssets.cartEmpty,
              width: Dimens.dp80,
            ),
            const SizedBox(
              height: Dimens.dp20,
            ),
            Text(
              'Opss! Your Cart is Empty',
              style: AppTextStyle.primaryTextStyle.copyWith(
                fontSize: Dimens.dp16,
                fontWeight: AppTextStyle.medium,
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
              width: Dimens.dp150,
              height: Dimens.dp44,
              child: TextButton(
                onPressed: () {
                  AppRouter.router.go('/home');
                },
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimens.dp24),
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
      );
    }

    Widget content() {
      return ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.defaultMargin,
        ),
        children: const [
          CartCard(),
        ],
      );
    }

    Widget customBottomNav() {
      return SizedBox(
        height: Dimens.dp175,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: Dimens.defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: AppTextStyle.primaryTextStyle,
                  ),
                  Text(
                    // ignore: use_raw_strings
                    '\$287,96',
                    style: AppTextStyle.priceTextStyle.copyWith(
                      fontSize: Dimens.dp16,
                      fontWeight: AppTextStyle.semiBold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: Dimens.defaultMargin,
            ),
            const Divider(
              thickness: 1,
              color: AppColors.bgColor2,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(Dimens.defaultMargin),
                height: Dimens.dp50,
                child: TextButton(
                  onPressed: () {
                    AppRouter.router.push('/checkout');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.dp20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimens.dp26),
                    ),
                    primary: AppColors.primaryTextColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Continue to Checkout',
                        style: AppTextStyle.primaryTextStyle.copyWith(
                          fontSize: Dimens.dp16,
                          fontWeight: AppTextStyle.semiBold,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: AppColors.primaryTextColor,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.bgColor3,
      appBar: header(),
      // body: emptyCart(),
      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
