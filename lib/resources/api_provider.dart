import 'package:bankly_transactions/constants/constants_strings.dart';
import 'package:bankly_transactions/models/transaction_model/transaction_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String baseUrl = ConstantStrings.api;

  Future<List<TransactionModel>> transactionList() async {
    try {
      Response response = await _dio.get(baseUrl);
      // return TransactionModel.fromJson(response.data) as List<TransactionModel>;
      if (response.data is List) {
        List<dynamic> responseData = response.data;
        var transactions =
            responseData.map((e) => TransactionModel.fromJson(e)).toList();
        // if (query != null) {
        //   transactions = transactions
        //       .where((element) => element.accountName!
        //           .toLowerCase()
        //           .contains(query.toLowerCase()))
        //       .toList();
        // }
        debugPrint('api provider response $transactions');
        return transactions;
      } else {
        throw Exception('Invalid response format');
      }
    } catch (error) {
      if (kDebugMode) {
        print('Exception occured: $error');
      }
      return [TransactionModel.withError('$error')];
    }
  }
}
