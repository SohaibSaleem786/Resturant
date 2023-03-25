/// user : {"id":"128","tusrid":"Sufi","tusrpwd":"2023","tusrnam":"Saif","tmobnum":"03217555020","temladd":"saif.icit@gmail.com","tcrtdat":"2022-12-18","tcrttim":null,"tupdtim":null,"tusrsts":"Yes","tusrtyp":"Collector","tcolcod":"999","tloccod":"99"}
/// error : 200
/// message : "login success"

class ResponseModel {
  ResponseModel({
      User? user, 
      num? error, 
      String? message,}){
    _user = user;
    _error = error;
    _message = message;
}

  ResponseModel.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _error = json['error'];
    _message = json['message'];
  }
  User? _user;
  num? _error;
  String? _message;
ResponseModel copyWith({  User? user,
  num? error,
  String? message,
}) => ResponseModel(  user: user ?? _user,
  error: error ?? _error,
  message: message ?? _message,
);
  User? get user => _user;
  num? get error => _error;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['error'] = _error;
    map['message'] = _message;
    return map;
  }

}

/// id : "128"
/// tusrid : "Sufi"
/// tusrpwd : "2023"
/// tusrnam : "Saif"
/// tmobnum : "03217555020"
/// temladd : "saif.icit@gmail.com"
/// tcrtdat : "2022-12-18"
/// tcrttim : null
/// tupdtim : null
/// tusrsts : "Yes"
/// tusrtyp : "Collector"
/// tcolcod : "999"
/// tloccod : "99"

class User {
  User({
      String? id, 
      String? tusrid, 
      String? tusrpwd, 
      String? tusrnam, 
      String? tmobnum, 
      String? temladd, 
      String? tcrtdat, 
      dynamic tcrttim, 
      dynamic tupdtim, 
      String? tusrsts, 
      String? tusrtyp, 
      String? tcolcod, 
      String? tloccod,}){
    _id = id;
    _tusrid = tusrid;
    _tusrpwd = tusrpwd;
    _tusrnam = tusrnam;
    _tmobnum = tmobnum;
    _temladd = temladd;
    _tcrtdat = tcrtdat;
    _tcrttim = tcrttim;
    _tupdtim = tupdtim;
    _tusrsts = tusrsts;
    _tusrtyp = tusrtyp;
    _tcolcod = tcolcod;
    _tloccod = tloccod;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _tusrid = json['tusrid'];
    _tusrpwd = json['tusrpwd'];
    _tusrnam = json['tusrnam'];
    _tmobnum = json['tmobnum'];
    _temladd = json['temladd'];
    _tcrtdat = json['tcrtdat'];
    _tcrttim = json['tcrttim'];
    _tupdtim = json['tupdtim'];
    _tusrsts = json['tusrsts'];
    _tusrtyp = json['tusrtyp'];
    _tcolcod = json['tcolcod'];
    _tloccod = json['tloccod'];
  }
  String? _id;
  String? _tusrid;
  String? _tusrpwd;
  String? _tusrnam;
  String? _tmobnum;
  String? _temladd;
  String? _tcrtdat;
  dynamic _tcrttim;
  dynamic _tupdtim;
  String? _tusrsts;
  String? _tusrtyp;
  String? _tcolcod;
  String? _tloccod;
User copyWith({  String? id,
  String? tusrid,
  String? tusrpwd,
  String? tusrnam,
  String? tmobnum,
  String? temladd,
  String? tcrtdat,
  dynamic tcrttim,
  dynamic tupdtim,
  String? tusrsts,
  String? tusrtyp,
  String? tcolcod,
  String? tloccod,
}) => User(  id: id ?? _id,
  tusrid: tusrid ?? _tusrid,
  tusrpwd: tusrpwd ?? _tusrpwd,
  tusrnam: tusrnam ?? _tusrnam,
  tmobnum: tmobnum ?? _tmobnum,
  temladd: temladd ?? _temladd,
  tcrtdat: tcrtdat ?? _tcrtdat,
  tcrttim: tcrttim ?? _tcrttim,
  tupdtim: tupdtim ?? _tupdtim,
  tusrsts: tusrsts ?? _tusrsts,
  tusrtyp: tusrtyp ?? _tusrtyp,
  tcolcod: tcolcod ?? _tcolcod,
  tloccod: tloccod ?? _tloccod,
);
  String? get id => _id;
  String? get tusrid => _tusrid;
  String? get tusrpwd => _tusrpwd;
  String? get tusrnam => _tusrnam;
  String? get tmobnum => _tmobnum;
  String? get temladd => _temladd;
  String? get tcrtdat => _tcrtdat;
  dynamic get tcrttim => _tcrttim;
  dynamic get tupdtim => _tupdtim;
  String? get tusrsts => _tusrsts;
  String? get tusrtyp => _tusrtyp;
  String? get tcolcod => _tcolcod;
  String? get tloccod => _tloccod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['tusrid'] = _tusrid;
    map['tusrpwd'] = _tusrpwd;
    map['tusrnam'] = _tusrnam;
    map['tmobnum'] = _tmobnum;
    map['temladd'] = _temladd;
    map['tcrtdat'] = _tcrtdat;
    map['tcrttim'] = _tcrttim;
    map['tupdtim'] = _tupdtim;
    map['tusrsts'] = _tusrsts;
    map['tusrtyp'] = _tusrtyp;
    map['tcolcod'] = _tcolcod;
    map['tloccod'] = _tloccod;
    return map;
  }

}