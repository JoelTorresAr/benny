import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {

  @nullable
  @BuiltValueField(serialize: false)
  String get error;
  
  @BuiltValueField(wireName: 'user_id')
  String get id;

  String get name;

  String get email;

  String get mobile;

  @BuiltValueField(wireName: 'country_code')
  String get countryCode;

  @nullable
  String get dob;

  String get balance;

  @BuiltValueField(wireName: 'city_id')
  String get cityId;
  
  @BuiltValueField(wireName: 'city_name')
  String get cityName;

  @BuiltValueField(wireName: 'area_id')
  String get areaId;

  @BuiltValueField(wireName: 'area_name')
  String get areaName;

  String get street;

  @BuiltValueField(wireName: 'pincode')
  String get pinCode;

  @BuiltValueField(wireName: 'referral_code')
  String get referralCode;

  @BuiltValueField(wireName: 'friends_code')
  String get friendsCode;

  String get latitude;

  String get longitude;

  @nullable
  @BuiltValueField(wireName: 'apikey')
  String get apiKey;

  String get status;
  
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(User.serializer, this);
  }

  static User fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(User.serializer, json);
  }

  static Serializer<User> get serializer => _$userSerializer;
}
