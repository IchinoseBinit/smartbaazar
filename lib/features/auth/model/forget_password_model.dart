class ForgetPasswordModel {
  bool? success;
  String? message;
  String? result;

  ForgetPasswordModel({this.success, this.message, this.result});

  ForgetPasswordModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    data['result'] = result;
    return data;
  }
}
