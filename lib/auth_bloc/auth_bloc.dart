import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mengulang_flutter/auth_bloc/auth_event.dart';
import 'package:mengulang_flutter/auth_bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(): super(AuthInitial()){
    on<AuthLogin>((event, emit) async{
      emit(AuthLoading());
      await Future.delayed(Duration(seconds: 5));
      emit(AuthSuccess(name: "Login Fajri berhasil"));
    });
    on<AuthLogout>((event, emit) async{
      emit(AuthLoading());
      await Future.delayed(Duration(seconds: 5));
      emit(AuthInitial());
    });
    on<AuthRegister>((event, emit) async{
      emit(AuthLoading());
      await Future.delayed(Duration(seconds: 5));
      emit(AuthSuccess(name: "Register Fajri berhasil"));
    });
  }
}