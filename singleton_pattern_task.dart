class Database {
  static bool instanceCreated = false;
  static late Database _database;

  static createSingletonDataBase() {
    if (instanceCreated == false) {
      _database = Database();
      instanceCreated = true;
    }
    return _database;
  }
}

class Client {
  Database firstDatabase = Database.createSingletonDataBase();
  Database secondDatabase = Database.createSingletonDataBase();

  void checkSingleton() {
    if (firstDatabase == secondDatabase) {
      print('They are the Same');
    } else {
      print('they are not the same');
    }
  }
}

void main(List<String> args) {
  Client client = Client();
  client.checkSingleton();
}