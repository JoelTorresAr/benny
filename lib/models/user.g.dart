// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'mobile',
      serializers.serialize(object.mobile,
          specifiedType: const FullType(String)),
      'country_code',
      serializers.serialize(object.countryCode,
          specifiedType: const FullType(String)),
      'balance',
      serializers.serialize(object.balance,
          specifiedType: const FullType(String)),
      'city_id',
      serializers.serialize(object.cityId,
          specifiedType: const FullType(String)),
      'city_name',
      serializers.serialize(object.cityName,
          specifiedType: const FullType(String)),
      'area_id',
      serializers.serialize(object.areaId,
          specifiedType: const FullType(String)),
      'area_name',
      serializers.serialize(object.areaName,
          specifiedType: const FullType(String)),
      'street',
      serializers.serialize(object.street,
          specifiedType: const FullType(String)),
      'pincode',
      serializers.serialize(object.pinCode,
          specifiedType: const FullType(String)),
      'referral_code',
      serializers.serialize(object.referralCode,
          specifiedType: const FullType(String)),
      'friends_code',
      serializers.serialize(object.friendsCode,
          specifiedType: const FullType(String)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(String)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
    ];
    if (object.dob != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(object.dob,
            specifiedType: const FullType(String)));
    }
    if (object.apiKey != null) {
      result
        ..add('apikey')
        ..add(serializers.serialize(object.apiKey,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mobile':
          result.mobile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country_code':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'balance':
          result.balance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city_id':
          result.cityId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city_name':
          result.cityName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'area_id':
          result.areaId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'area_name':
          result.areaName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pincode':
          result.pinCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'referral_code':
          result.referralCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'friends_code':
          result.friendsCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'apikey':
          result.apiKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String error;
  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String mobile;
  @override
  final String countryCode;
  @override
  final String dob;
  @override
  final String balance;
  @override
  final String cityId;
  @override
  final String cityName;
  @override
  final String areaId;
  @override
  final String areaName;
  @override
  final String street;
  @override
  final String pinCode;
  @override
  final String referralCode;
  @override
  final String friendsCode;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String apiKey;
  @override
  final String status;
  @override
  final String createdAt;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.error,
      this.id,
      this.name,
      this.email,
      this.mobile,
      this.countryCode,
      this.dob,
      this.balance,
      this.cityId,
      this.cityName,
      this.areaId,
      this.areaName,
      this.street,
      this.pinCode,
      this.referralCode,
      this.friendsCode,
      this.latitude,
      this.longitude,
      this.apiKey,
      this.status,
      this.createdAt})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('User', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('User', 'name');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('User', 'email');
    }
    if (mobile == null) {
      throw new BuiltValueNullFieldError('User', 'mobile');
    }
    if (countryCode == null) {
      throw new BuiltValueNullFieldError('User', 'countryCode');
    }
    if (balance == null) {
      throw new BuiltValueNullFieldError('User', 'balance');
    }
    if (cityId == null) {
      throw new BuiltValueNullFieldError('User', 'cityId');
    }
    if (cityName == null) {
      throw new BuiltValueNullFieldError('User', 'cityName');
    }
    if (areaId == null) {
      throw new BuiltValueNullFieldError('User', 'areaId');
    }
    if (areaName == null) {
      throw new BuiltValueNullFieldError('User', 'areaName');
    }
    if (street == null) {
      throw new BuiltValueNullFieldError('User', 'street');
    }
    if (pinCode == null) {
      throw new BuiltValueNullFieldError('User', 'pinCode');
    }
    if (referralCode == null) {
      throw new BuiltValueNullFieldError('User', 'referralCode');
    }
    if (friendsCode == null) {
      throw new BuiltValueNullFieldError('User', 'friendsCode');
    }
    if (latitude == null) {
      throw new BuiltValueNullFieldError('User', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('User', 'longitude');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('User', 'status');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('User', 'createdAt');
    }
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        error == other.error &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        mobile == other.mobile &&
        countryCode == other.countryCode &&
        dob == other.dob &&
        balance == other.balance &&
        cityId == other.cityId &&
        cityName == other.cityName &&
        areaId == other.areaId &&
        areaName == other.areaName &&
        street == other.street &&
        pinCode == other.pinCode &&
        referralCode == other.referralCode &&
        friendsCode == other.friendsCode &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        apiKey == other.apiKey &&
        status == other.status &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, error.hashCode), id.hashCode),
                                                                                name.hashCode),
                                                                            email.hashCode),
                                                                        mobile.hashCode),
                                                                    countryCode.hashCode),
                                                                dob.hashCode),
                                                            balance.hashCode),
                                                        cityId.hashCode),
                                                    cityName.hashCode),
                                                areaId.hashCode),
                                            areaName.hashCode),
                                        street.hashCode),
                                    pinCode.hashCode),
                                referralCode.hashCode),
                            friendsCode.hashCode),
                        latitude.hashCode),
                    longitude.hashCode),
                apiKey.hashCode),
            status.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('error', error)
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('mobile', mobile)
          ..add('countryCode', countryCode)
          ..add('dob', dob)
          ..add('balance', balance)
          ..add('cityId', cityId)
          ..add('cityName', cityName)
          ..add('areaId', areaId)
          ..add('areaName', areaName)
          ..add('street', street)
          ..add('pinCode', pinCode)
          ..add('referralCode', referralCode)
          ..add('friendsCode', friendsCode)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('apiKey', apiKey)
          ..add('status', status)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _mobile;
  String get mobile => _$this._mobile;
  set mobile(String mobile) => _$this._mobile = mobile;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _dob;
  String get dob => _$this._dob;
  set dob(String dob) => _$this._dob = dob;

  String _balance;
  String get balance => _$this._balance;
  set balance(String balance) => _$this._balance = balance;

  String _cityId;
  String get cityId => _$this._cityId;
  set cityId(String cityId) => _$this._cityId = cityId;

  String _cityName;
  String get cityName => _$this._cityName;
  set cityName(String cityName) => _$this._cityName = cityName;

  String _areaId;
  String get areaId => _$this._areaId;
  set areaId(String areaId) => _$this._areaId = areaId;

  String _areaName;
  String get areaName => _$this._areaName;
  set areaName(String areaName) => _$this._areaName = areaName;

  String _street;
  String get street => _$this._street;
  set street(String street) => _$this._street = street;

  String _pinCode;
  String get pinCode => _$this._pinCode;
  set pinCode(String pinCode) => _$this._pinCode = pinCode;

  String _referralCode;
  String get referralCode => _$this._referralCode;
  set referralCode(String referralCode) => _$this._referralCode = referralCode;

  String _friendsCode;
  String get friendsCode => _$this._friendsCode;
  set friendsCode(String friendsCode) => _$this._friendsCode = friendsCode;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  String _apiKey;
  String get apiKey => _$this._apiKey;
  set apiKey(String apiKey) => _$this._apiKey = apiKey;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _id = _$v.id;
      _name = _$v.name;
      _email = _$v.email;
      _mobile = _$v.mobile;
      _countryCode = _$v.countryCode;
      _dob = _$v.dob;
      _balance = _$v.balance;
      _cityId = _$v.cityId;
      _cityName = _$v.cityName;
      _areaId = _$v.areaId;
      _areaName = _$v.areaName;
      _street = _$v.street;
      _pinCode = _$v.pinCode;
      _referralCode = _$v.referralCode;
      _friendsCode = _$v.friendsCode;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _apiKey = _$v.apiKey;
      _status = _$v.status;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ??
        new _$User._(
            error: error,
            id: id,
            name: name,
            email: email,
            mobile: mobile,
            countryCode: countryCode,
            dob: dob,
            balance: balance,
            cityId: cityId,
            cityName: cityName,
            areaId: areaId,
            areaName: areaName,
            street: street,
            pinCode: pinCode,
            referralCode: referralCode,
            friendsCode: friendsCode,
            latitude: latitude,
            longitude: longitude,
            apiKey: apiKey,
            status: status,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
