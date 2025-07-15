import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multimodular_practice/di/injection.dart';
import 'package:login/domain/usecase/login_usecase.dart';
import 'package:login/presentation/bloc/login_bloc.dart';
import 'package:login/presentation/screen/login_screen.dart';
import 'package:main/main_screen.dart';
import 'package:main/main_screen_bloc.dart';
import 'package:movies/domain/usecase/movies_usecase.dart';
import 'package:movies/presentation/bloc/movies_bloc.dart';
import 'package:navigator/navigation_bloc.dart';
import 'package:navigator/navigation_routes.dart';
import 'package:navigator/navigation_state.dart';
import 'package:navigator/navigation_type.dart';

class NavigationModule extends StatelessWidget {
  const NavigationModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationBloc()),
        BlocProvider(create: (context) => LoginBloc(getIt<LoginUsecase>())),
        BlocProvider(create: (context) => MainScreenBloc()),
        BlocProvider(create: (context) => MoviesBloc(getIt<MoviesUseCase>())),
      ],
      child: MaterialApp(
        routes: {
          NavigationRoutes.main: (context) => MainScreen(),
          NavigationRoutes.login: (context) => LoginScreen(),
        },
        home: BlocListener<NavigationBloc, NavigationState>(
          listener: (context, state) {
            if (state.route.isNotEmpty) {
              if (state.navigationType == NavigationType.push) {
                Navigator.pushNamed(context, state.route);
              } else if (state.navigationType == NavigationType.replace) {
                Navigator.pushReplacementNamed(context, state.route);
              } else if (state.navigationType == NavigationType.pop) {
                Navigator.pop(context);
              }
            }
          },
          child: LoginScreen(),
        ),
      ),
    );
  }
}
