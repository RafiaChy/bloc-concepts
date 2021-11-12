import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concepts/business_logic/cubit/counter_cubit.dart';
import 'package:flutter_bloc_concepts/presentation/router/app_router.dart';
import 'package:flutter_bloc_concepts/presentation/screens/second_screen.dart';
import 'package:flutter_bloc_concepts/presentation/screens/third_screen.dart';

import 'presentation/screens/home_screen.dart';

void main() {
  final counterState1 = CounterState(counterValue: 1);
  final counterState2 = CounterState(counterValue: 1);
  print(counterState1 == counterState2);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //final CounterCubit _counterCubit = CounterCubit();
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // routes: {                                //named route
      //   '/': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child: HomeScreen(
      //           title: 'Flutter Demo Home Page',
      //           color: Colors.blueAccent,
      //         ),
      //       ),
      //   '/second': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child:
      //             SecondScreen(title: 'Second Screen', color: Colors.redAccent),
      //       ),
      //   '/third': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child:
      //             ThirdScreen(title: 'Third Screen', color: Colors.greenAccent),
      //       ),
      // },
      onGenerateRoute: _appRouter.onGeneratingRoute,
    );
  }

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }

  // @override
  // void dispose() {
  //   _counterCubit.close();
  //   super.dispose();
  // }
}
