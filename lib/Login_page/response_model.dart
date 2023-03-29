/// user : {"id":"33","username":"sohaib","email":"sohaibsaleem@89gmail.com","password":"sohaib","father":"saleem","age":"21","mobile":"03047738612","city":"lahore"}
/// status : 200
/// message : "Login Successful"

class ResponseModel {
  ResponseModel({
      User? user, 
      num? status, 
      String? message,}){
    _user = user;
    _status = status;
    _message = message;
}

  ResponseModel.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _status = json['status'];
    _message = json['message'];
  }
  User? _user;
  num? _status;
  String? _message;
ResponseModel copyWith({  User? user,
  num? status,
  String? message,
}) => ResponseModel(  user: user ?? _user,
  status: status ?? _status,
  message: message ?? _message,
);
  User? get user => _user;
  num? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}

/// id : "33"
/// username : "sohaib"
/// email : "sohaibsaleem@89gmail.com"
/// password : "sohaib"
/// father : "saleem"
/// age : "21"
/// mobile : "03047738612"
/// city : "lahore"

class User {
  User({
      String? id, 
      String? username, 
      String? email, 
      String? password, 
      String? father, 
      String? age, 
      String? mobile, 
      String? city,}){
    _id = id;
    _username = username;
    _email = email;
    _password = password;
    _father = father;
    _age = age;
    _mobile = mobile;
    _city = city;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _password = json['password'];
    _father = json['father'];
    _age = json['age'];
    _mobile = json['mobile'];
    _city = json['city'];
  }
  String? _id;
  String? _username;
  String? _email;
  String? _password;
  String? _father;
  String? _age;
  String? _mobile;
  String? _city;
User copyWith({  String? id,
  String? username,
  String? email,
  String? password,
  String? father,
  String? age,
  String? mobile,
  String? city,
}) => User(  id: id ?? _id,
  username: username ?? _username,
  email: email ?? _email,
  password: password ?? _password,
  father: father ?? _father,
  age: age ?? _age,
  mobile: mobile ?? _mobile,
  city: city ?? _city,
);
  String? get id => _id;
  String? get username => _username;
  String? get email => _email;
  String? get password => _password;
  String? get father => _father;
  String? get age => _age;
  String? get mobile => _mobile;
  String? get city => _city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['email'] = _email;
    map['password'] = _password;
    map['father'] = _father;
    map['age'] = _age;
    map['mobile'] = _mobile;
    map['city'] = _city;
    return map;
  }

}