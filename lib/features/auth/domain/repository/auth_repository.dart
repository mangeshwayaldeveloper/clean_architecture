//we added the abstract interface,
// because we want implement the methods which are declared here.

import 'package:cleanarchitecture/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Either<Failure, String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failure, String>> loginWithEmailPassword({
    required String email,
    required String password,
  });
}
