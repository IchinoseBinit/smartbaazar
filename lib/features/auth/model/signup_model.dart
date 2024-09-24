class SignupModel {
  bool? success;
  String? message;
  Result? result;
  Extra? extra;

  SignupModel({this.success, this.message, this.result, this.extra});

  SignupModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    result =
        json['result'] != null ? Result.fromJson(json['result']) : null;
    extra = json['extra'] != null ? Extra.fromJson(json['extra']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    if (extra != null) {
      data['extra'] = extra!.toJson();
    }
    return data;
  }
}

class Result {
  int? id;
  String? name;
  String? username;
  String? createdAtFormatted;
  String? photoUrl;

  Result(
      {this.id,
      this.name,
      this.username,
      this.createdAtFormatted,
      this.photoUrl});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    createdAtFormatted = json['created_at_formatted'];
    photoUrl = json['photo_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['created_at_formatted'] = createdAtFormatted;
    data['photo_url'] = photoUrl;
    return data;
  }
}

class Extra {
  SendEmailVerification? sendEmailVerification;
  SendPhoneVerification? sendPhoneVerification;
  Mail? mail;

  Extra({this.sendEmailVerification, this.sendPhoneVerification, this.mail});

  Extra.fromJson(Map<String, dynamic> json) {
    sendEmailVerification = json['sendEmailVerification'] != null
        ? SendEmailVerification.fromJson(json['sendEmailVerification'])
        : null;
    sendPhoneVerification = json['sendPhoneVerification'] != null
        ? SendPhoneVerification.fromJson(json['sendPhoneVerification'])
        : null;
    mail = json['mail'] != null ? Mail.fromJson(json['mail']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sendEmailVerification != null) {
      data['sendEmailVerification'] = sendEmailVerification!.toJson();
    }
    if (sendPhoneVerification != null) {
      data['sendPhoneVerification'] = sendPhoneVerification!.toJson();
    }
    if (mail != null) {
      data['mail'] = mail!.toJson();
    }
    return data;
  }
}

class SendEmailVerification {
  bool? success;
  bool? emailVerificationSent;
  String? message;

  SendEmailVerification(
      {this.success, this.emailVerificationSent, this.message});

  SendEmailVerification.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    emailVerificationSent = json['emailVerificationSent'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['emailVerificationSent'] = emailVerificationSent;
    data['message'] = message;
    return data;
  }
}

class SendPhoneVerification {
  bool? success;
  bool? phoneVerificationSent;
  String? message;

  SendPhoneVerification(
      {this.success, this.phoneVerificationSent, this.message});

  SendPhoneVerification.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    phoneVerificationSent = json['phoneVerificationSent'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['phoneVerificationSent'] = phoneVerificationSent;
    data['message'] = message;
    return data;
  }
}

class Mail {
  bool? success;
  String? message;

  Mail({this.success, this.message});

  Mail.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    return data;
  }
}
