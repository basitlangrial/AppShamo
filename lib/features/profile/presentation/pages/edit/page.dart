import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_starter/core/core.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.restoreSystemUIOverlays();
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: AppColors.bgColor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: AppTextStyle.primaryTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: AppTextStyle.secondTextStyle,
            ),
            TextFormField(
              style: AppTextStyle.primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'Doni Mulya Syahputra',
                hintStyle: AppTextStyle.primaryTextStyle,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.secondTextColor),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Userame',
              style: AppTextStyle.secondTextStyle,
            ),
            TextFormField(
              style: AppTextStyle.primaryTextStyle,
              decoration: InputDecoration(
                hintText: '@donisaputra00',
                hintStyle: AppTextStyle.primaryTextStyle,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.secondTextColor),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: Dimens.defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: AppTextStyle.secondTextStyle,
            ),
            TextFormField(
              style: AppTextStyle.primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'example@email.com',
                hintStyle: AppTextStyle.primaryTextStyle,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.secondTextColor),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        padding: const EdgeInsets.all(Dimens.defaultMargin),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: Dimens.dp100,
              height: Dimens.dp100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(MainAssets.profileCircle),
                ),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.bgColor3,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
