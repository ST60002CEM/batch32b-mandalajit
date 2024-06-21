import 'package:json_annotation/json_annotation.dart';
import 'package:recipe/features/auth/domain/entity/auth_entity.dart';

part 'get_current_user_dto.g.dart';

@JsonSerializable()
class GetCurrentUserDto {
  @JsonKey(name:"_id")
  final String id;
  final String fname;
  final String lname;
  final String phone;
  final String image;
  final String username;
  final String batch;
  final List<String> course;

  GetCurrentUserDto({
    required this.id,
    required this.fname,
    required this.lname,
    required this.phone,
    required this.image,
    required this.username,
    required this.batch,
    required this.course,
  });

  AuthEntity toEntity() {
    return AuthEntity(
        id: id,
        fname: fname,
        lname: lname,
        image: image,
        phone: phone,
        username: username,
        password: '');
  }

  factory GetCurrentUserDto.fromJson(Map<String, dynamic> json) =>
      _$GetCurrentUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GetCurrentUserDtoToJson(this);
}
