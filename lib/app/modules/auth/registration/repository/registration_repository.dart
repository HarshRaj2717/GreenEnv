abstract class RegistrationRepository {
  Future<bool> registerUser(String email, String password, String name,
      String address, String state, String zipCode, String city);

  Future<bool> verifyOTP(String email, String password, String name,
      String address, String state, String zipCode, String city, String code);
}
