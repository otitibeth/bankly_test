import 'package:bankly_transactions/models/transaction_model/transaction_model.dart';
import 'package:bankly_transactions/resources/api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<List<TransactionModel>> fetchTransactions() {
    return _provider.transactionList();
  }
}

class NetworkError extends Error {}
