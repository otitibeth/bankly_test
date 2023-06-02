// part of 'search_cubit.dart';

// class SearchState extends Equatable {
//   final List<TransactionModel>? data;
//   final bool isLoading;

//   const SearchState({this.data, this.isLoading = false});

//   @override
//   List<Object?> get props => [data, isLoading];

//   SearchState copyWith({List<TransactionModel>? data, bool? isLoading}) {
//     return SearchState(
//       data: data ?? this.data,
//       isLoading: isLoading ?? false,
//     );
//   }
// }

// class BaseSearchState extends SearchState {
//   BaseSearchState(SearchState state)
//       : super(
//           data: state.data,
//         );
// }
//   class SearchSuccessState extends BaseSearchState {
// SearchSuccessState(SearchState state, data)
//       : super(state.copyWith(data: data));
// }

// class SearchErrorState extends SearchState {
//   final String error;
//   const SearchErrorState({super.data, required this.error});
// }
