import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AutheRepository {
  Future<Either<String, UserCredential>> Signup({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Left('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return Left('The account already exists for that email.');
      }
      // معالجة أي استثناءات إضافية من نوع FirebaseAuthException
      return Left('FirebaseAuthException occurred: ${e.message}');
    } catch (e) {
      return Left('An unexpected error occurred: $e');
    }
  }
}
