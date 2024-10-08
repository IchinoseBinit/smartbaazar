import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_model.freezed.dart';
part 'alert_model.g.dart';

@freezed
class AlertModel with _$AlertModel {
    const factory AlertModel({
        @JsonKey(name: "alerts")
        required List<Alert>? alerts,
    }) = _AlertModel;
     factory AlertModel.fromJson(Map<String, dynamic> json) => _$AlertModelFromJson(json);
}

@freezed
class Alert with _$Alert {
  const factory Alert({
    required String? id,
    @JsonKey(name: 'user_id') required String? userId,
    required String? title,
    required String? body,
    String? image,
    @JsonKey(name: 'click_action') required String? clickAction,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _Alert;

  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);
}
