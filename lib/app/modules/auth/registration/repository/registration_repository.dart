abstract class RegistrationRepository {
  Future<bool> registerUser(
      String email, String password, String name, String address);
}
