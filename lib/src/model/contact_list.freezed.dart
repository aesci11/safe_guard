// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactList _$ContactListFromJson(Map<String, dynamic> json) {
  return _ContactList.fromJson(json);
}

/// @nodoc
mixin _$ContactList {
  @JsonKey(name: 'contact_name')
  String get contactName => throw _privateConstructorUsedError;
  @JsonKey(name: 'tel_no')
  String get telNo => throw _privateConstructorUsedError;

  /// Serializes this ContactList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactListCopyWith<ContactList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListCopyWith<$Res> {
  factory $ContactListCopyWith(
          ContactList value, $Res Function(ContactList) then) =
      _$ContactListCopyWithImpl<$Res, ContactList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'contact_name') String contactName,
      @JsonKey(name: 'tel_no') String telNo});
}

/// @nodoc
class _$ContactListCopyWithImpl<$Res, $Val extends ContactList>
    implements $ContactListCopyWith<$Res> {
  _$ContactListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactName = null,
    Object? telNo = null,
  }) {
    return _then(_value.copyWith(
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      telNo: null == telNo
          ? _value.telNo
          : telNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactListImplCopyWith<$Res>
    implements $ContactListCopyWith<$Res> {
  factory _$$ContactListImplCopyWith(
          _$ContactListImpl value, $Res Function(_$ContactListImpl) then) =
      __$$ContactListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'contact_name') String contactName,
      @JsonKey(name: 'tel_no') String telNo});
}

/// @nodoc
class __$$ContactListImplCopyWithImpl<$Res>
    extends _$ContactListCopyWithImpl<$Res, _$ContactListImpl>
    implements _$$ContactListImplCopyWith<$Res> {
  __$$ContactListImplCopyWithImpl(
      _$ContactListImpl _value, $Res Function(_$ContactListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactName = null,
    Object? telNo = null,
  }) {
    return _then(_$ContactListImpl(
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      telNo: null == telNo
          ? _value.telNo
          : telNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactListImpl implements _ContactList {
  const _$ContactListImpl(
      {@JsonKey(name: 'contact_name') required this.contactName,
      @JsonKey(name: 'tel_no') required this.telNo});

  factory _$ContactListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactListImplFromJson(json);

  @override
  @JsonKey(name: 'contact_name')
  final String contactName;
  @override
  @JsonKey(name: 'tel_no')
  final String telNo;

  @override
  String toString() {
    return 'ContactList(contactName: $contactName, telNo: $telNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactListImpl &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.telNo, telNo) || other.telNo == telNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contactName, telNo);

  /// Create a copy of ContactList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactListImplCopyWith<_$ContactListImpl> get copyWith =>
      __$$ContactListImplCopyWithImpl<_$ContactListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactListImplToJson(
      this,
    );
  }
}

abstract class _ContactList implements ContactList {
  const factory _ContactList(
          {@JsonKey(name: 'contact_name') required final String contactName,
          @JsonKey(name: 'tel_no') required final String telNo}) =
      _$ContactListImpl;

  factory _ContactList.fromJson(Map<String, dynamic> json) =
      _$ContactListImpl.fromJson;

  @override
  @JsonKey(name: 'contact_name')
  String get contactName;
  @override
  @JsonKey(name: 'tel_no')
  String get telNo;

  /// Create a copy of ContactList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactListImplCopyWith<_$ContactListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
