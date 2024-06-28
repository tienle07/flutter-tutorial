class User {
  int? id;
  String? fullName;
  String? userName;
  String? userCode;
  String? email;
  String? sdt;
  String? address;
  String? avatar;
  bool? gender;
  String? ngaySinh;
  int? status;
  User({
    this.id,
    this.fullName,
    this.userName,
    this.userCode,
    this.email,
    this.sdt,
    this.address,
    this.avatar,
    this.gender,
    this.ngaySinh,
    this.status,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        fullName = json['fullName'],
        userName = json['userName'],
        userCode = json['userCode'],
        email = json['email'],
        sdt = json['sdt'],
        address = json['address'],
        avatar = json['avatar'],
        gender = json['gender'],
        ngaySinh = json['ngaySinh'],
        status = json['status'];

  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'userName': userName,
        'userCode': userCode,
        'email': email,
        'sdt': sdt,
        'address': address,
        'avatar': avatar,
        'gender': gender,
        'ngaySinh': ngaySinh,
        'status': status,
      };
}
