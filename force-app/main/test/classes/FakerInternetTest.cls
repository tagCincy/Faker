@IsTest
private class FakerInternetTest {
  private static Faker_Internet fakerInternet = new Faker_Internet();

  @IsTest
  static void itShouldReturnPublicDomainEmail() {
    String email = fakerInternet.FreeEmail;
    System.assert(Faker_Data.PUBLIC_EMAIL_DOMAINS.contains(email.split('@')[1]));
  }

  @IsTest
  static void itShouldReturnSafeEmail() {
    String email = fakerInternet.SafeEmail;
    System.assertEquals('example.com', email.split('@')[1]);
  }

  @IsTest
  static void itShouldReturnEmailBasedOnName() {
    String email = fakerInternet.SafeEmail('Foo Bar');
    System.assert(Pattern.matches('foo[._-]*bar@example\\.com', email), 'Email ' + email + ' does not match expected pattern');
  }

  @IsTest
  static void itShouldReturnEmailBasedOnNameAndSeparator() {
    String email = fakerInternet.SafeEmail('Foo Bar', '_');
    System.assertEquals('foo_bar@example.com', email);
  }

  @IsTest
  static void itShouldReturnRandomUsername() {
    String username = fakerInternet.Username;
    System.assert(Pattern.matches('[a-z]+([._-]*[a-z]+)+', username));
  }

  @IsTest
  static void itShouldReturnUsernameBasedOnName() {
    String username = fakerInternet.Username('Foo Bar');
    System.assert(Pattern.matches('foo[._-]*bar', username));
  }

  @IsTest
  static void itShouldRandomEightCharacterPassword() {
    String password = fakerInternet.Password;
    System.assert(Pattern.matches('\\S{8}', password), 'Password ' + password + ' is not 8 characters');
  }

  @IsTest
  static void itShouldRandomPasswordAtSpecificLength() {
    String password = fakerInternet.Password(4);
    System.assert(Pattern.matches('\\S{4}', password), 'Password ' + password + ' is not 4 characters');
  }

}
