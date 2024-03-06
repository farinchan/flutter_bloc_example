import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mengulang_flutter/auth_bloc/auth_bloc.dart';
import 'package:mengulang_flutter/auth_bloc/auth_event.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page"), elevation: 5,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text("Selamat datang di aplikasi ku")),
          ElevatedButton(onPressed: (){
            context.read<AuthBloc>().add(AuthLogin());
          }, child: const Text("Login"))
        ],
      ),
    );
  }
}