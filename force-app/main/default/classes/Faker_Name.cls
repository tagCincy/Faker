public class Faker_Name {
  public String FirstName {
    get {
      return getFirstName();
    }
    private set;
  }

  public String LastName {
    get {
      return getLastName();
    }
    private set;
  }

  public String FullName {
    get {
      return getFullName();
    }
    private set;
  }

  private String getFirstName() {
    return Faker_Data.FIRST_NAMES.get(Math.round(Math.random() * ( Faker_Data.FIRST_NAMES.size() - 1 )));
  }

  private String getLastName() {
    return Faker_Data.LAST_NAMES.get(Math.round(Math.random() * ( Faker_Data.LAST_NAMES.size() - 1 )));
  }

  private String getFullName() {
    return getFirstName() + ' ' + getLastName();
  }
}
