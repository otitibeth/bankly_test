part of 'transaction_bloc.dart';

class TransactionState extends Equatable {
  final List<TransactionModel>? data;
  final bool isLoading;

  const TransactionState({this.data, this.isLoading = false});

  @override
  List<Object?> get props => [data, isLoading];

  TransactionState copyWith({List<TransactionModel>? data, bool? isLoading}) {
    return TransactionState(
      data: data ?? this.data,
      isLoading: isLoading ?? false,
    );
  }
}

class ErrorState extends TransactionState {
  final String error;
  const ErrorState({super.data, required this.error});
}
