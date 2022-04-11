import 'package:flutter/material.dart';
import 'package:flutter_starter/app/routes.dart';
import 'package:flutter_starter/core/core.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register',
              style: AppTextStyle.primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: AppTextStyle.semiBold,
              ),
            ),
            Text(
              'Register and happy shoping',
              style: AppTextStyle.secondTextStyle,
            ),
          ],
        ),
      );
    }

    Widget nameInput() {
      return Container(
        padding: const EdgeInsets.only(top: Dimens.dp50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: AppTextStyle.primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: AppTextStyle.medium,
              ),
            ),
            const SizedBox(
              height: Dimens.dp12,
            ),
            Container(
              height: Dimens.dp50,
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp16,
              ),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(Dimens.dp25),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      MainAssets.user,
                      width: Dimens.dp17,
                    ),
                    const SizedBox(
                      width: Dimens.dp16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: AppTextStyle.primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Full Name',
                          hintStyle: AppTextStyle.secondTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: const EdgeInsets.only(top: Dimens.dp20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: AppTextStyle.primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: AppTextStyle.medium,
              ),
            ),
            const SizedBox(
              height: Dimens.dp12,
            ),
            Container(
              height: Dimens.dp50,
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp16,
              ),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(Dimens.dp25),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      MainAssets.username,
                      width: Dimens.dp17,
                    ),
                    const SizedBox(
                      width: Dimens.dp16,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: AppTextStyle.primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Username',
                          hintStyle: AppTextStyle.secondTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: Dimens.dp20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: AppTextStyle.primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: AppTextStyle.medium,
              ),
            ),
            const SizedBox(
              height: Dimens.dp12,
            ),
            Container(
              height: Dimens.dp50,
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp16,
              ),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(Dimens.dp25),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      MainAssets.email,
                      width: Dimens.dp17,
                    ),
                    const SizedBox(
                      width: Dimens.dp16,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: AppTextStyle.primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: AppTextStyle.secondTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(top: Dimens.dp20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: AppTextStyle.primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: AppTextStyle.medium,
              ),
            ),
            const SizedBox(
              height: Dimens.dp12,
            ),
            Container(
              height: Dimens.dp50,
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.dp16,
              ),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(Dimens.dp25),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      MainAssets.password,
                      width: Dimens.dp17,
                    ),
                    const SizedBox(
                      width: Dimens.dp16,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: AppTextStyle.primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: AppTextStyle.secondTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget registerButton() {
      return Container(
        height: Dimens.dp50,
        width: double.infinity,
        margin: const EdgeInsets.only(top: Dimens.dp30),
        child: TextButton(
          onPressed: () {
            AppRouter.router.push('/home');
          },
          style: TextButton.styleFrom(
            primary: AppColors.primaryTextColor,
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.dp50),
            ),
          ),
          child: Text(
            'Register Now',
            style: AppTextStyle.primaryTextStyle.copyWith(
              fontSize: Dimens.dp16,
              fontWeight: AppTextStyle.medium,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: Dimens.dp30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: AppTextStyle.secondTextStyle.copyWith(
                fontWeight: AppTextStyle.medium,
              ),
            ),
            GestureDetector(
              onTap: () {
                AppRouter.router.push('/');
              },
              child: Text(
                ' Login',
                style: AppTextStyle.purpleTextStyle.copyWith(
                  fontWeight: AppTextStyle.medium,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.bgColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: Dimens.defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              nameInput(),
              usernameInput(),
              emailInput(),
              passwordInput(),
              registerButton(),
              const Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
