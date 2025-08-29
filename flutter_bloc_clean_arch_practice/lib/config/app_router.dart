import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../di/injection_container.dart';
import '../presentation/cubit/repository_cubit.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/login_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/login', // Set initial route to login page
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => BlocProvider(
        create: (context) => sl<RepositoryCubit>(),
        child: const HomePage(),
      ),
    ),
  ],
);