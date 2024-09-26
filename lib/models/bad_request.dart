class BadRequest {
  Null? data;
  String? message;
  int? code;

  BadRequest({this.data, this.message, this.code});

  BadRequest.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    message = json['message'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['message'] = this.message;
    data['code'] = this.code;
    return data;
  }
}