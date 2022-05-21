class UserFungsi {
  String? uid;
  String? fullname;
  String? email;
  String? phone;

  UserFungsi({
    this.uid,
    this.fullname,
    this.email,
    this.phone,
  });

  //menerima data dari server
  factory UserFungsi.fromMap(map) {
    return UserFungsi(
      uid: map['uid'],
      fullname: map['fullname'],
      email: map['email'],
      phone: map['phone'],
    );
  }

  //kirim data ke server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'fullname': fullname,
      'email': email,
      'phone': phone,
    };
  }
}
