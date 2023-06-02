import 'package:bankly_transactions/extensions.dart/index.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../gen/assets.gen.dart';
import '../gen/fonts.gen.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, this.controller, this.onChanged});
  final TextEditingController? controller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9.5)
                  .copyWith(left: 25.62),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.black.withOpacity(0.05),
                        blurRadius: 11,
                        offset: const Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: context.isDark
                      ? AppColors.inputFillDark
                      : AppColors.white),
              child: TextFormField(
                cursorHeight: 14,
                cursorColor: AppColors.black,
                onChanged: onChanged,
                controller: controller,
                keyboardType: TextInputType.text,
                style: context.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: const Color.fromARGB(255, 89, 87, 87),
                  fontFamily: FontFamily.sfUiDisplay,
                ),
                decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: context.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: AppColors.searchColor,
                      fontFamily: FontFamily.sfUiDisplay,
                    ),
                    isDense: true,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    // contentPadding: EdgeInsets.symmetric(horizontal: 10, 
                    // vertical: 13),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(5.0).copyWith(left: 0),
                      child: Assets.svg.searchIcon.svg(height: 14, width: 14),
                    ),
                    suffixIcon: Container(
                      // width: 73,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14.0, vertical: 4),
                      decoration: BoxDecoration(
                          color: AppColors.lightBlue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Filter',
                            style: context.bodySmall?.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: AppColors.primaryBlue,
                              fontFamily: FontFamily.sfUiDisplay,
                            ),
                          ),
                          6.0.w,
                          Assets.svg.filterIcon.svg()
                        ],
                      ),
                    )),
              ),
            ));
  }
}
