public class Faker {
  public static Faker_Name Name {
    get {
      return new Faker_Name();
    }
    private set;
  }

  public static Faker_Address Address {
    get {
      return new Faker_Address();
    }
    private set;
  }

  public static Faker_Internet Internet {
    get {
      return new Faker_Internet();
    }
    private set;
  }
}
