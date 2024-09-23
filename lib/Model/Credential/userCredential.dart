class Usercredential {
  int? id;
  String firstName;
  String lastName;
  String gender;
  String number;
  String userName;
  String pswd;

  Usercredential(
      {required this.firstName,
      required this.lastName,
      required this.gender,
      required this.number,
      required this.userName,
      required this.pswd,
      this.id});

  factory Usercredential.fromJson(Map json) {
    return Usercredential(
        id: json['id'] ?? 0,
        firstName: json['firstname'] ?? 'unknown',
        lastName: json['lastname'] ?? 'unknown',
        gender: json['gender'] ?? 'unknown',
        number: json['number'] ?? 'unknown',
        userName: json['username'] ?? 'unknown',
        pswd: json['password'] ?? 'unknown');
  }

  @override
  String toString() {
    return '{"id": $id,"firstname":"$firstName","lastname":"$lastName","gender":"$gender","number":"$number","username":"$userName","password":"$pswd"}';
  }
}
