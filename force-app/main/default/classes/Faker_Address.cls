public class Faker_Address {
  public String StreetAddress {
    get {
      return getStreetAddress();
    }
  }

  public String City {
    get {
      return getCity();
    }
  }

  public String State {
    get {
      return getState();
    }
  }

  public String StateAbbr {
    get {
      return getStateAbbreviation();
    }
  }

  public String PostalCode {
    get {
      return getPostalCode();
    }
  }

  private String getBuildingNumber() {
    return String.valueOf(Math.round(Math.random() * 9999));
  }

  private String getStreetName() {
    String streetName = Faker_Data.STREETS.get(Math.round(Math.random() * ( Faker_Data.STREETS.size() - 1 )));
    String streetSuffix = Faker_Data.STREET_SUFFIXES.get(Math.round(Math.random() * ( Faker_Data.STREET_SUFFIXES.size() - 1 )));
    return streetName + ' ' + streetSuffix;
  }

  private String getStreetAddress() {
    return getBuildingNumber() + ' ' + getStreetName();
  }

  private String getCity() {
    return Faker_Data.CITIES.get(Math.round(Math.random() * ( Faker_Data.CITIES.size() - 1 )));
  }

  private String getState() {
    List<String> stateKeys = new List<String>(Faker_Data.STATES.keySet());
    return stateKeys.get(Math.round(Math.random() * ( stateKeys.size() - 1 )));
  }

  private String getStateAbbreviation() {
    return getStateAbbreviation(getState());
  }

  private String getStateAbbreviation(String state) {
    return Faker_Data.STATES.get(state);
  }

  private String getPostalCode() {
    return String.valueOf(Math.abs(Crypto.getRandomInteger())).left(5).leftPad(5, '0');
  }
}
