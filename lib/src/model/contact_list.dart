import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list.g.dart';

part 'contact_list.freezed.dart';

@freezed
class ContactList with _$ContactList {
  const factory ContactList({
    @JsonKey(name: 'contact_name') required String contactName,
    @JsonKey(name: 'tel_no') required String telNo,
  }) = _ContactList;

  factory ContactList.fromJson(Map<String, dynamic> json) => _$ContactListFromJson(json);
}
