import 'package:bankly_transactions/constants/app_colors.dart';
import 'package:bankly_transactions/extensions.dart/index.dart';
import 'package:bankly_transactions/gen/assets.gen.dart';
import 'package:bankly_transactions/gen/fonts.gen.dart';
import 'package:flutter/cupertino.dart';

class BanklyAppBar extends CupertinoNavigationBar {
  BanklyAppBar({super.key, required BuildContext context, bool back = true})
      : super(
          backgroundColor:
              context.isDark ? AppColors.backgroundDark : AppColors.background,
          padding: const EdgeInsetsDirectional.only(
              start: 16, end: 16, top: 0, bottom: 4),
          leading: Container(
            width: 38,
            decoration: const BoxDecoration(
                color: AppColors.arrowBackColor, shape: BoxShape.circle),
            child: GestureDetector(
                onTap: back != false ? () => Navigator.pop(context) : () {},
                child: Center(child: Assets.svg.arrowBack.svg())),
          ),
          middle: Text('Transactions',
              style: context.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  fontFamily: FontFamily.sfUiDisplay)),
          border: null,
        );
}
