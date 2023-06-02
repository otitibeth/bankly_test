import 'package:bankly_transactions/views/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/cubit/search_cubit.dart';
import 'bloc/transaction_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TransactionBloc(),
        ),
        BlocProvider(
          create: (context) => SearchCubit(),
        ),
      ],
      child: GestureDetector(
        onTap: () =>
            WidgetsBinding.instance.focusManager.primaryFocus?.unfocus(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Transactions(),
        ),
      ),
    );
  }
}
