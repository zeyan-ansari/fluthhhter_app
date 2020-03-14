class User {
  final int user_id;
  final String name;
  final String last_name;
  final String imageUrl;
  final String email;
  final String phone;
  final String password;
  final int is_active;
  final String datetime;


  User({
    this.user_id,
    this.imageUrl,
    this.email,
    this.phone,
    this.datetime,
    this.name,
    this.is_active,
    this.last_name,
    this.password

  });
}