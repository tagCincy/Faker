@IsTest
private class FakerAddressTest {
  static Faker_Address fakerAddress = new Faker_Address();

  @IsTest
  static void itShouldReturnRandomStreetAddress() {
    String random = fakerAddress.StreetAddress;
    List<String> parts = random.split('\\s');
    System.assert(Pattern.matches('[0-9]{1,5}', parts[0]));
    System.assert(Faker_Data.STREETS.contains(parts[1]));
    System.assert(Faker_Data.STREET_SUFFIXES.contains(parts[2]));
  }

  @IsTest
  static void itShouldReturnRandomCity() {
    String random = fakerAddress.City;
    System.assert(Faker_Data.CITIES.contains(random));
  }

  @IsTest
  static void itShouldReturnRandomState() {
    String random = fakerAddress.State;
    System.assert(Faker_Data.STATES.containsKey(random));
  }

  @IsTest
  static void itShouldReturnRandomStateAbbreviation() {
    String random = fakerAddress.StateAbbr;
    System.assert(Faker_Data.STATES.values().contains(random));
  }

  @IsTest
  static void itShouldReturnRandomPostalCode() {
    String random = fakerAddress.PostalCode;
    System.assert(Pattern.matches('[0-9]{5}', random));
  }
}
