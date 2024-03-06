import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mengulang_flutter/auth_bloc/auth_bloc.dart';
import 'package:mengulang_flutter/auth_bloc/auth_state.dart';
import 'package:mengulang_flutter/pages/home_page.dart';
import 'package:mengulang_flutter/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        title: "Aplikasi Too",
        theme: ThemeData(useMaterial3: true),
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is  AuthLoading) {
            return Scaffold(body: Center(child: CircularProgressIndicator(),),);
          }
          if (state is AuthSuccess) {
            return HomePage();
          }
          return LoginPage();
        },
      );
  }
}

