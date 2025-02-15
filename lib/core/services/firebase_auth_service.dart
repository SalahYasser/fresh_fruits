import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/custom_exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {

      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code is ${e.code.toString()} ');

      if (e.code == 'weak-password') {
        throw CustomExceptions(message: 'كلمة المرور ضعيفة جدا');

      } else if (e.code == 'email-already-in-use') {
        throw CustomExceptions(message: 'البريد الإلكتروني مستخدم بالفعل');

      } else if (e.code == 'network-request-failed') {
        throw CustomExceptions(message: 'الاتصال بالانترنت غير متوفر');

      } else {
        throw CustomExceptions(message: 'يوجد خطأ, حاول مرة أخرى');
      }
    } catch (e) {
      throw CustomExceptions(message: 'يوجد خطأ, حاول مرة أخرى');
    }
  }
}