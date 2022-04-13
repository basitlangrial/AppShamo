import 'package:flutter/material.dart';
import 'package:flutter_starter/app/routes.dart';
import 'package:flutter_starter/core/core.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: AppColors.bgColor1,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(Dimens.defaultMargin),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    MainAssets.profileCircle,
                    width: Dimens.dp64,
                  ),
                ),
                const SizedBox(
                  width: Dimens.dp16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Doni',
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
                GestureDetector(
                  onTap: () {
                    AppRouter.router.go('/');
                  },
                  child: Image.asset(
                    MainAssets.exit,
                    width: Dimens.dp20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget menuAccount(String text) {
      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.dp16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppTextStyle.secondTextStyle,
            ),
            const Icon(
              Icons.chevron_right,
              color: AppColors.primaryTextColor,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.defaultMargin,
            vertical: Dimens.dp20,
          ),
          decoration: const BoxDecoration(
            color: AppColors.bgColor3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Account',
                style: AppTextStyle.primaryTextStyle.copyWith(
                  fontSize: Dimens.dp16,
                  fontWeight: AppTextStyle.semiBold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  AppRouter.router.push('/profile/edit');
                },
                child: menuAccount('Edit Account'),
              ),
              menuAccount('Your Orders'),
              menuAccount('Help'),
              const SizedBox(
                height: Dimens.dp30,
              ),
              Text(
                'General',
                style: AppTextStyle.primaryTextStyle.copyWith(
                  fontSize: Dimens.dp16,
                  fontWeight: AppTextStyle.semiBold,
                ),
              ),
              menuAccount('Privacy & Policy'),
              menuAccount('Term of Service'),
              menuAccount('Rate App'),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
