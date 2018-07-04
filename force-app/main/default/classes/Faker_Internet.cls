public class Faker_Internet {

  private static final List<String> SEPARATORS = new List<String> {
    '.', '_', '-', ''
  };

  private static final String SAFE_EMAIL_DOMAIN = 'example.com';

  public String FreeEmail {
    get {
      return FreeEmail(Faker.Name.FullName);
    }
    private set;
  }

  public String FreeEmail(String name) {
    String seperator = getSeparator();
    return FreeEmail(name, seperator);
  }

  public String FreeEmail(String name, String separator) {
    String domain = Faker_Data.PUBLIC_EMAIL_DOMAINS.get(
      Math.round(Math.random() * (Faker_Data.PUBLIC_EMAIL_DOMAINS.size() - 1))
    );
    return buildEmail(name, separator, domain);
  }

  public String SafeEmail {
    get {
      return SafeEmail(Faker.Name.FullName);
    }
    private set;
  }

  public String SafeEmail(String name) {
    String separator = getSeparator();
    return SafeEmail(name, separator);
  }

  public String SafeEmail(String name, String separator) {
    return buildEmail(name, separator, SAFE_EMAIL_DOMAIN);
  }

  public String Username {
    get {
      return Username(Faker.Name.FullName);
    }
    private set;
  }

  public String Username(String name) {
    String separator = getSeparator();
    return buildUsername(name, separator);
  }

  public String Password {
    get {
      return Password(8);
    }
    private set;
  }

  public String Password(Integer length) {
    return buildPassword(length);
  }

  private String buildEmail(String name, String separator, String domain) {
    String username = buildUsername(name, separator);
    return username + '@' + domain;
  }

  private String buildUsername(String name, String separator) {
    return String.join(name.split('\\s'), separator).toLowerCase();
  }

  private String getSeparator() {
    return SEPARATORS.get(Math.round(Math.random() * (SEPARATORS.size() - 1)));
  }

  private String buildPassword(Integer length) {
    Integer startChar = 33;
    Integer endChar = 126;
    Integer spread =  endChar - startChar;
    List<Integer> charArray = new List<Integer>();

    for (Integer i = 0; i < length; i++) {
      Integer rand = (Integer) Math.floor(Math.random() * spread);
      Integer point = ( Math.mod(rand, 2) == 0 ) ? ( startChar + rand ) : ( endChar - rand );
      charArray.add(point);
    }

    return String.fromCharArray(charArray);
  }
}
