import 'package:bankly_transactions/bloc/cubit/search_cubit.dart';
import 'package:bankly_transactions/bloc/transaction_bloc.dart';
import 'package:bankly_transactions/extensions.dart/index.dart';
import 'package:bankly_transactions/gen/fonts.gen.dart';
import 'package:bankly_transactions/models/transaction_model/transaction_model.dart';
import 'package:bankly_transactions/widgets/app_bar.dart';
import 'package:bankly_transactions/views/transaction_types/all.dart';
import 'package:bankly_transactions/views/transaction_types/credit.dart';
import 'package:bankly_transactions/views/transaction_types/debit.dart';
import 'package:bankly_transactions/widgets/no_transaction.dart';
import 'package:bankly_transactions/widgets/transaction_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/app_colors.dart';
import '../widgets/search_field.dart';

class Transactions extends StatefulWidget {
  static const routeName = '/transactions';
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  final TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<TransactionBloc>().load();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor:
            context.isDark ? AppColors.backgroundDark : AppColors.background,
        appBar: BanklyAppBar(context: context, back: false),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            25.0.h,
            Padding(
              padding: const EdgeInsets.only(right: 17, left: 17.0),
              child: SearchField(
                controller: textController,
                onChanged: context.read<SearchCubit>().onSearch,
              ),
            ),
            20.0.h,
            TabBar(
                dividerColor: AppColors.dividerColor,
                indicatorColor: AppColors.primaryBlue,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Container(
                      alignment: Alignment.center,
                      width: 37,
                      child: Text(
                        'All',
                        style: context.bodyMedium?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.sfUiDisplay,
                          color: AppColors.textBlack,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      // width: 20,
                      child: Text(
                        'Credit',
                        style: context.bodyMedium?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.sfUiDisplay,
                          color: AppColors.green,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Debit',
                      style: context.bodyMedium?.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.sfUiDisplay,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                ]),
            3.0.h,
            BlocBuilder<SearchCubit, String>(
                builder: (context, search) =>
                    BlocConsumer<TransactionBloc, TransactionState>(
                        listener: (context, state) {
                      if (state is ErrorState) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(state.error)));
                      }
                    }, builder: ((context, state) {
                      List<TransactionModel> data = state.data ?? [];
                      if (search.isNotEmpty) {
                        data = data.where((element) {
                          element.trnDrCr?.contains(search) ?? false;
                          var accountName = element.accountName?.toLowerCase();
                          var accountNumber =
                              element.accountNumber?.toLowerCase();
                          var bankName = element.bankName?.toLowerCase();
                          var trnAmount = element.trnAmount?.toLowerCase();
                          var trnType = element.trnDrCr?.toLowerCase();
                          var trnDescription =
                              element.trnNarration?.toLowerCase();
                          final input = search.toLowerCase();

                          return accountName!.contains(input) ||
                              accountNumber!.contains(input) ||
                              bankName!.contains(input) ||
                              trnAmount!.contains(input) ||
                              trnType!.contains(input) ||
                              trnDescription!.contains(input);
                        }).toList();
                      }
                      if (state.isLoading && data.isEmpty) {
                        return const TransactionLoading();
                      }

                      if (data.isEmpty) {
                        return const NoTransaction(
                            text:
                                'Couldn\'t find what you were \nlooking for! ');
                      }
                      return Expanded(
                          child: RefreshIndicator(
                        onRefresh: () async {
                          await context.read<TransactionBloc>().load();
                        },
                        child: TabBarView(children: [
                          All(
                            transactions: data,
                          ),
                          Credit(
                            transactions: data,
                          ),
                          Debit(
                            transactions: data,
                          ),
                        ]),
                      ));
                    }))),
          ],
        ),
      ),
    );
  }
}
