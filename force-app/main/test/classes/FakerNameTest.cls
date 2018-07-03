@IsTest
private class FakerNameTest {
  static Faker_Name fakerName = new Faker_Name();

  @IsTest
  static void itShouldReturnRandomFirstName() {
    String random = fakerName.FirstName;
    System.assert(Faker_Data.FIRST_NAMES.contains(random));
  }

  @IsTest
  static void itShouldReturnRandomLastName() {
    String random = fakerName.LastName;
    System.assert(Faker_Data.LAST_NAMES.contains(random));
  }

  @IsTest
  static void itShouldReturnRandomFullName() {
    String random = fakerName.FullName;
    System.assert(Faker_Data.FIRST_NAMES.contains(random.split('\\s')[0]));
    System.assert(Faker_Data.LAST_NAMES.contains(random.split('\\s')[1]));
  }
}
