class UserModel {
  late String id;
  late String fullName;
  late String email;

  UserModel({required this.email, required this.fullName, required this.id});

  //named Constructor
  //Map to Object
  // return object
  UserModel.fromMap(Map<String, dynamic> mapValue) {
    this.id = mapValue['id'];
    this.fullName = mapValue['fullName'];
    this.email = mapValue['email'];
  }

// Object to Map
// return Map

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      "fullName": this.fullName,
      "email": this.email,
    };
  }
}
