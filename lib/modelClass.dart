// class data{
//
//   List <User> list=[];
// }

class User{
  final String firstName;
  final String lastName;
  final String phoneNo;
  final String email;
  final String qrLink;

  User(this.firstName, this.lastName, this.phoneNo,
    this.email, this.qrLink);

  // factory User.fromMap(Map<dynamic,dynamic>map){
  //   return User(firstName: map["FirstName"],
  //       lastName: map["LastName"],
  //       phoneNo: map["UserMobile"],
  //       email: map["UserEmailID"],
  //       qrLink: map["qrCode"]);
  // }
}