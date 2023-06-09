import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_user_github/core/utils/date_util.dart';

part 'git_state.freezed.dart';
part 'git_state.g.dart';

@freezed
class GitState with _$GitState {
  factory GitState({
    @Default([]) List<User> users,
    @Default(GitUserDetail()) GitUserDetail gitUserDetail,
    @Default(true) bool isListLoading,
    @Default(true) bool isDetailLoading,
  }) = _GitState;

  factory GitState.fromJson(Map<String, dynamic> json) =>
      _$GitStateFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'login') String? name,
    @JsonKey(name: 'avatar_url') String? avatar,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'score') double? score,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}

@freezed
class GitUserDetail with _$GitUserDetail {
  const factory GitUserDetail({
    @JsonKey(name: 'public_repos') int? repos,
    @JsonKey(name: 'login') String? name,
    @JsonKey(name: 'name') String? realName,
    @JsonKey(name: 'avatar_url') String? avatar,
    @JsonKey(name: 'company') String? company,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'followers') int? followers,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updateAt,

  }) = _GitUserDetail;

  factory GitUserDetail.fromJson(Map<String, dynamic> json) =>
      _$GitUserDetailFromJson(json);
}

