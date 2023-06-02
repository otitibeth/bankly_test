import 'package:bankly_transactions/models/transaction_model/transaction_model.dart';
import 'package:bankly_transactions/resources/api_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final ApiRepository _repository = ApiRepository();

  load() {
    add(LoadTransactions());
  }

  TransactionBloc() : super(const TransactionState()) {
    on<LoadTransactions>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true));

        final response = await _repository.fetchTransactions();
        // print('bloc response $response');

        if (response.isNotEmpty && response[0].error == null) {
          // print('response is valid');
          emit(state.copyWith(data: response));
        } else {
          emit(ErrorState(
              data: state.data,
              error: response[0].error ?? 'an error occured'));
        }
      } on NetworkError {
        emit(ErrorState(
            data: state.data,
            error:
                'Failed to fetch data! Check that you\'re connected to the internet'));
      } catch (error) {
        emit(ErrorState(data: state.data, error: 'An error occurred: $error'));
      }
    });
  }
}
