import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe/features/auth/domain/usecases/auth_usecase.dart';
import 'package:recipe/features/auth/presentation/navigator/login_navigator.dart';
import 'package:recipe/features/auth/presentation/state/auth_state.dart';

import '../../../../core/common/my_snackbar.dart';
import '../../domain/entity/auth_entity.dart';

final authViewModelProvider = StateNotifierProvider<AuthViewModel, AuthState>(
      (ref) => AuthViewModel(
    ref.read(loginViewNavigatorProvider),
    ref.read(authUseCaseProvider),
  ),
);


class AuthViewModel extends StateNotifier<AuthState>{
  AuthViewModel(this.navigator,this.authUseCase): super(AuthState.initial());
  final AuthUseCase authUseCase;
  final LoginViewNavigator navigator;

  Future<void> registerUser(AuthEntity student) async {
    state = state.copyWith(isLoading: true);
    var data = await authUseCase.registerStudent(student);
    data.fold(
          (failure) {
        state = state.copyWith(
          isLoading: false,
          error: failure.error,
        );
        showMySnackBar(message: failure.error, color: Colors.red);
      },
          (success) {
        state = state.copyWith(isLoading: false, error: null);
        showMySnackBar(message: "Successfully registered");
      },
    );
  }

  Future<void> loginUser(
      String username,
      String password,
      ) async {
    state = state.copyWith(isLoading: true);
    var data = await authUseCase.loginStudent(username, password);
    data.fold(
          (failure) {
        state = state.copyWith(isLoading: false, error: failure.error);
        showMySnackBar(message: failure.error, color: Colors.red);
      },
          (success) {
        state = state.copyWith(isLoading: false, error: null);
        openHomeView();
      },
    );
  }
  void openRegisterView() {
    navigator.openRegisterView();
  }

  void openHomeView() {
    navigator.openHomeView();
  }
}