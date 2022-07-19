class User {
  final String name;
  final String email;
  final String imageUrl;

  const User({required this.name, required this.email, required this.imageUrl});

  static User fromJson(json) => User(
      name: json['name'], email: json['email'], imageUrl: json['imageUrl']);
}
