import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mengulang_flutter/auth_bloc/auth_bloc.dart';
import 'package:mengulang_flutter/auth_bloc/auth_event.dart';
import 'package:mengulang_flutter/auth_bloc/auth_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Home Page"),
              elevation: 5,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("${state.name} Telah Masuh")),
                ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(AuthLogout());
                    },
                    child: const Text("Logout"))
              ],
            ),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
