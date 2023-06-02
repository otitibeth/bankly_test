import 'package:bankly_transactions/extensions.dart/index.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TransactionLoading extends StatelessWidget {
  const TransactionLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: Shimmer.fromColors(
              baseColor: context.baseShimmerColor,
              highlightColor: context.highlightShimmerColor,
              child: Material(
                  borderRadius: 0.0.toBorderRadius,
                  child: const SizedBox(width: double.infinity, height: 80.0)),
            ),
          ),
          15.0.h,
          SizedBox(
            height: 80,
            child: Shimmer.fromColors(
              baseColor: context.baseShimmerColor,
              highlightColor: context.highlightShimmerColor,
              child: Material(
                  borderRadius: 0.0.toBorderRadius,
                  child: const SizedBox(width: double.infinity, height: 80.0)),
            ),
          ),
          15.0.h,
          SizedBox(
            height: 80,
            child: Shimmer.fromColors(
              baseColor: context.baseShimmerColor,
              highlightColor: context.highlightShimmerColor,
              child: Material(
                  borderRadius: 0.0.toBorderRadius,
                  child: const SizedBox(width: double.infinity, height: 80.0)),
            ),
          ),
          15.0.h,
          SizedBox(
            height: 80,
            child: Shimmer.fromColors(
              baseColor: context.baseShimmerColor,
              highlightColor: context.highlightShimmerColor,
              child: Material(
                  borderRadius: 0.0.toBorderRadius,
                  child: const SizedBox(width: double.infinity, height: 80.0)),
            ),
          ),
          15.0.h,
          SizedBox(
            height: 80,
            child: Shimmer.fromColors(
              baseColor: context.baseShimmerColor,
              highlightColor: context.highlightShimmerColor,
              child: Material(
                  borderRadius: 0.0.toBorderRadius,
                  child: const SizedBox(width: double.infinity, height: 80.0)),
            ),
          ),
          15.0.h,
          SizedBox(
            height: 80,
            child: Shimmer.fromColors(
              baseColor: context.baseShimmerColor,
              highlightColor: context.highlightShimmerColor,
              child: Material(
                  borderRadius: 0.0.toBorderRadius,
                  child: const SizedBox(width: double.infinity, height: 80.0)),
            ),
          ),
          15.0.h,
        ],
      ),
    );
  }
}
