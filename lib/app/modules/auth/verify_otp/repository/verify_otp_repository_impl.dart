import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'verify_otp_repository.dart';

part 'verify_otp_repository_impl.g.dart';

class VerifyOtpRepositoryImpl extends VerifyOtpRepository {
  // TODO add your methods here
}

@riverpod
 VerifyOtpRepository verifyOtpRepository(VerifyOtpRepositoryRef ref) =>
    VerifyOtpRepositoryImpl();

