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

  public String Alias {
    get {
      return Alias(FullName);
    }
    private set;
  }

  public String Alias(String name) {
    List<String> nameParts = name.toLowerCase().split(' ', 2);
    String endOfAlias = nameParts[1].deleteWhitespace().left(4);
    String startOfAlias = nameParts[0].left(5-endOfAlias.length());
    return startOfAlias + endOfAlias;
  }

  private String getFirstName() {
    return Faker_Data.FIRST_NAMES.get((Integer) Math.floor(Math.random() * ( Faker_Data.FIRST_NAMES.size())));
  }

  private String getLastName() {
    return Faker_Data.LAST_NAMES.get((Integer) Math.floor(Math.random() * ( Faker_Data.LAST_NAMES.size())));
  }

  private String getFullName() {
    return getFirstName() + ' ' + getLastName();
  }
}
