import 'dart:ffi';

class User{
  final String username;
  final String password;
  final int station_id;
  User({
    required this.username,
    required this.password,
    required this.station_id
  });

  Map<String,dynamic> toJson() => {
    'username':username,
    'password':password,
    'station_id':station_id,
  };

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      password: json['password'],
      station_id: json['station_id']
    );
  }
}


class LoginResponse {
  Data? data;
  String? message;
  int? code;

  LoginResponse({this.data,required this.message, this.code});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['code'] = this.code;
    return data;
  }
}

class Data {
  int? id;
  Null? parentUserId;
  String? code;
  String? name;
  Null? nik;
  String? email;
  String? username;
  String? phoneNumber;
  Null? photo;
  String? address;
  Null? merchantId;
  int? mainRoleId;
  int? referenceId;
  Null? notificationSettings;
  String? emailVerifiedAt;
  String? active;
  Null? otpCode;
  int? createdUserId;
  String? createdUserName;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? token;
  Role? role;
  Null? merchant;
  List<Roles>? roles;
  List<Null>? permissions;
  ActiveStation? activeStation;

  Data(
      {this.id,
        this.parentUserId,
        this.code,
        this.name,
        this.nik,
        this.email,
        this.username,
        this.phoneNumber,
        this.photo,
        this.address,
        this.merchantId,
        this.mainRoleId,
        this.referenceId,
        this.notificationSettings,
        this.emailVerifiedAt,
        this.active,
        this.otpCode,
        this.createdUserId,
        this.createdUserName,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.token,
        this.role,
        this.merchant,
        this.roles,
        this.permissions,
        this.activeStation});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentUserId = json['parent_user_id'];
    code = json['code'];
    name = json['name'];
    nik = json['nik'];
    email = json['email'];
    username = json['username'];
    phoneNumber = json['phone_number'];
    photo = json['photo'];
    address = json['address'];
    merchantId = json['merchant_id'];
    mainRoleId = json['main_role_id'];
    referenceId = json['reference_id'];
    notificationSettings = json['notification_settings'];
    emailVerifiedAt = json['email_verified_at'];
    active = json['active'];
    otpCode = json['otp_code'];
    createdUserId = json['created_user_id'];
    createdUserName = json['created_user_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    token = json['token'];
    role = json['role'] != null ? new Role.fromJson(json['role']) : null;
    merchant = json['merchant'];
    if (json['roles'] != null) {
      roles = <Roles>[];
      json['roles'].forEach((v) {
        roles!.add(new Roles.fromJson(v));
      });
    }
    activeStation = json['active_station'] != null
        ? new ActiveStation.fromJson(json['active_station'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['parent_user_id'] = this.parentUserId;
    data['code'] = this.code;
    data['name'] = this.name;
    data['nik'] = this.nik;
    data['email'] = this.email;
    data['username'] = this.username;
    data['phone_number'] = this.phoneNumber;
    data['photo'] = this.photo;
    data['address'] = this.address;
    data['merchant_id'] = this.merchantId;
    data['main_role_id'] = this.mainRoleId;
    data['reference_id'] = this.referenceId;
    data['notification_settings'] = this.notificationSettings;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['active'] = this.active;
    data['otp_code'] = this.otpCode;
    data['created_user_id'] = this.createdUserId;
    data['created_user_name'] = this.createdUserName;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['token'] = this.token;
    if (this.role != null) {
      data['role'] = this.role!.toJson();
    }
    data['merchant'] = this.merchant;
    if (this.roles != null) {
      data['roles'] = this.roles!.map((v) => v.toJson()).toList();
    }
    if (this.activeStation != null) {
      data['active_station'] = this.activeStation!.toJson();
    }
    return data;
  }
}

class Role {
  int? id;
  String? name;
  String? guardName;
  String? description;
  String? createdAt;
  String? updatedAt;

  Role(
      {this.id,
        this.name,
        this.guardName,
        this.description,
        this.createdAt,
        this.updatedAt});

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    guardName = json['guard_name'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['guard_name'] = this.guardName;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Roles {
  int? id;
  String? name;
  String? guardName;
  String? description;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;

  Roles(
      {this.id,
        this.name,
        this.guardName,
        this.description,
        this.createdAt,
        this.updatedAt,
        this.pivot});

  Roles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    guardName = json['guard_name'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['guard_name'] = this.guardName;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}

class Pivot {
  String? modelType;
  int? modelId;
  int? roleId;

  Pivot({this.modelType, this.modelId, this.roleId});

  Pivot.fromJson(Map<String, dynamic> json) {
    modelType = json['model_type'];
    modelId = json['model_id'];
    roleId = json['role_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['model_type'] = this.modelType;
    data['model_id'] = this.modelId;
    data['role_id'] = this.roleId;
    return data;
  }
}

class ActiveStation {
  int? id;
  String? name;
  String? topic;
  String? desc;
  String? isLogin;
  String? status;
  int? loginUserId;
  String? loginUserName;
  int? merchantId;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;

  ActiveStation(
      {this.id,
        this.name,
        this.topic,
        this.desc,
        this.isLogin,
        this.status,
        this.loginUserId,
        this.loginUserName,
        this.merchantId,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  ActiveStation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    topic = json['topic'];
    desc = json['desc'];
    isLogin = json['is_login'];
    status = json['status'];
    loginUserId = json['login_user_id'];
    loginUserName = json['login_user_name'];
    merchantId = json['merchant_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['topic'] = this.topic;
    data['desc'] = this.desc;
    data['is_login'] = this.isLogin;
    data['status'] = this.status;
    data['login_user_id'] = this.loginUserId;
    data['login_user_name'] = this.loginUserName;
    data['merchant_id'] = this.merchantId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
