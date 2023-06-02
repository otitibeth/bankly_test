import 'package:flutter_bloc/flutter_bloc.dart';

// part 'search_state.dart';

class SearchCubit extends Cubit<String> {
  SearchCubit() : super('');

  onSearch(String val) => emit(val);
}
