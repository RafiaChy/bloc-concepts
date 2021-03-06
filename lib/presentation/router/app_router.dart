import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concepts/business_logic/cubit/counter_cubit.dart';
import 'package:flutter_bloc_concepts/presentation/screens/home_screen.dart';
import 'package:flutter_bloc_concepts/presentation/screens/second_screen.dart';
import 'package:flutter_bloc_concepts/presentation/screens/third_screen.dart';

class AppRouter {
  // final CounterCubit _counterCubit = CounterCubit();
  Route? onGeneratingRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) =>
              HomeScreen(title: 'Home Screen', color: Colors.blueAccent),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) =>
              SecondScreen(title: 'Second Screen', color: Colors.redAccent),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) =>
              ThirdScreen(title: 'Third Screen', color: Colors.greenAccent),
        );
      default:
        return null;
    }
  }

  // @override
  // void dispose() {
  //   _counterCubit.close();
  // }
}
