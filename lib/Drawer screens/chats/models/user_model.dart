class User {
  final int id;
  final String name;
  final String avatar;

  User({
   required this.id,
   required this.name,
   required this.avatar,
  });
}

final User currentUser =
    User(id: 0, name: 'You', avatar: 'asset/images/Addison.jpg');

final User addison =
    User(id: 1, name: 'Addison', avatar: 'asset/images/Addison.jpg');

final User angel =
    User(id: 2, name: 'Angel', avatar: 'asset/images/Angel.jpg');

final User deanna =
    User(id: 3, name: 'Deanna', avatar: 'asset/images/Deanna.jpg');

final User jason = User(id: 4, name: 'Json', avatar: 'asset/images/Jason.jpg');

final User judd = User(id: 5, name: 'Judd', avatar: 'asset/images/Judd.jpg');

final User leslie =
    User(id: 6, name: 'Leslie', avatar: 'asset/images/Leslie.jpg');

final User nathan =
    User(id: 7, name: 'Nathan', avatar: 'asset/images/Nathan.jpg');

final User stanley =
    User(id: 8, name: 'Stanley', avatar: 'asset/images/Stanley.jpg');

final User virgil =
    User(id: 9, name: 'Virgil', avatar: 'asset/images/Virgil.jpg');
