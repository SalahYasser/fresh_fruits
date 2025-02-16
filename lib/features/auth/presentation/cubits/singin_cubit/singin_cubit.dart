import 'package:bloc/bloc.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'singin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;

  Future<void> signin(String email, String password) async {
    emit(SigninLoading());

    var result = await authRepo.signInWithEmailAndPassword(email, password);

    result.fold(
      (failure) {
        emit(SigninFailure(message: failure.message));
      },
      (userEntity) {
        emit(SigninSuccess(userEntity: userEntity));
      },
    );
  }

  Future<void> signinWithGoogle() async {
    emit(SigninLoading());

    var result = await authRepo.signInWithGoogle();

    result.fold(
      (failure) {
        emit(SigninFailure(message: failure.message));
      },
      (userEntity) {
        emit(SigninSuccess(userEntity: userEntity));
      },
    );
  }

  Future<void> signinWithFacebook() async {
    emit(SigninLoading());

    var result = await authRepo.signInWithFacebook();

    result.fold(
      (failure) {
        emit(SigninFailure(message: failure.message));
      },
      (userEntity) {
        emit(SigninSuccess(userEntity: userEntity));
      },
    );
  }

  Future<void> signinWithApple() async {
    emit(SigninLoading());

    var result = await authRepo.signInWithApple();

    result.fold(
      (failure) {
        emit(SigninFailure(message: failure.message));
      },
      (userEntity) {
        emit(SigninSuccess(userEntity: userEntity));
      },
    );
  }
}
