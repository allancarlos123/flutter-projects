class User {
  String email;
  String password;
  String passwordConfirmation;

  User({this.email, this.password, this.passwordConfirmation});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    passwordConfirmation = json['password_confirmation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['password_confirmation'] = this.passwordConfirmation;
    return data;
  }

  save() {
    print("Saving user using a web service...");
  }
}
