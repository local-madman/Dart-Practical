void main() {
  Admin asd = new Admin();
  asd.email = "asdafaf@mail.com";
  General pop = new General();
  pop.email = "pop@mail.ru";
  UserManager data = UserManager();
  data.addUser(asd);
  data.addUser(pop);
  print(data.showUsers());
}

class User {
  String? email;
}

class Admin extends User with Mail {}

class General extends User {}

mixin Mail on User {
  String? getMail() {
    if (email == null) {
      return "Incorrect Email";
    }
    return email!.split("@")[1];
  }
}

class UserManager<T extends User> {
  List<T> users = [];
  void addUser(T user) {
    users.add(user);
  }

  void deleteUser(T user) {
    users.remove(user);
  }

  List<String?> showUsers() {
    return users.map((user) {
      if (user is Admin) {
        return user.getMail();
      } else {
        return user.email;
      }
    }).toList();
  }
}
