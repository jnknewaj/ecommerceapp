// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'seller_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SellerResponseDto _$SellerResponseDtoFromJson(Map<String, dynamic> json) {
  return _SellerResponseDto.fromJson(json);
}

/// @nodoc
class _$SellerResponseDtoTearOff {
  const _$SellerResponseDtoTearOff();

  _SellerResponseDto call({required List<SellerDto> sellers}) {
    return _SellerResponseDto(
      sellers: sellers,
    );
  }

  SellerResponseDto fromJson(Map<String, Object> json) {
    return SellerResponseDto.fromJson(json);
  }
}

/// @nodoc
const $SellerResponseDto = _$SellerResponseDtoTearOff();

/// @nodoc
mixin _$SellerResponseDto {
  List<SellerDto> get sellers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SellerResponseDtoCopyWith<SellerResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerResponseDtoCopyWith<$Res> {
  factory $SellerResponseDtoCopyWith(
          SellerResponseDto value, $Res Function(SellerResponseDto) then) =
      _$SellerResponseDtoCopyWithImpl<$Res>;
  $Res call({List<SellerDto> sellers});
}

/// @nodoc
class _$SellerResponseDtoCopyWithImpl<$Res>
    implements $SellerResponseDtoCopyWith<$Res> {
  _$SellerResponseDtoCopyWithImpl(this._value, this._then);

  final SellerResponseDto _value;
  // ignore: unused_field
  final $Res Function(SellerResponseDto) _then;

  @override
  $Res call({
    Object? sellers = freezed,
  }) {
    return _then(_value.copyWith(
      sellers: sellers == freezed
          ? _value.sellers
          : sellers // ignore: cast_nullable_to_non_nullable
              as List<SellerDto>,
    ));
  }
}

/// @nodoc
abstract class _$SellerResponseDtoCopyWith<$Res>
    implements $SellerResponseDtoCopyWith<$Res> {
  factory _$SellerResponseDtoCopyWith(
          _SellerResponseDto value, $Res Function(_SellerResponseDto) then) =
      __$SellerResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<SellerDto> sellers});
}

/// @nodoc
class __$SellerResponseDtoCopyWithImpl<$Res>
    extends _$SellerResponseDtoCopyWithImpl<$Res>
    implements _$SellerResponseDtoCopyWith<$Res> {
  __$SellerResponseDtoCopyWithImpl(
      _SellerResponseDto _value, $Res Function(_SellerResponseDto) _then)
      : super(_value, (v) => _then(v as _SellerResponseDto));

  @override
  _SellerResponseDto get _value => super._value as _SellerResponseDto;

  @override
  $Res call({
    Object? sellers = freezed,
  }) {
    return _then(_SellerResponseDto(
      sellers: sellers == freezed
          ? _value.sellers
          : sellers // ignore: cast_nullable_to_non_nullable
              as List<SellerDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SellerResponseDto extends _SellerResponseDto {
  const _$_SellerResponseDto({required this.sellers}) : super._();

  factory _$_SellerResponseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SellerResponseDtoFromJson(json);

  @override
  final List<SellerDto> sellers;

  @override
  String toString() {
    return 'SellerResponseDto(sellers: $sellers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SellerResponseDto &&
            (identical(other.sellers, sellers) ||
                const DeepCollectionEquality().equals(other.sellers, sellers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sellers);

  @JsonKey(ignore: true)
  @override
  _$SellerResponseDtoCopyWith<_SellerResponseDto> get copyWith =>
      __$SellerResponseDtoCopyWithImpl<_SellerResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SellerResponseDtoToJson(this);
  }
}

abstract class _SellerResponseDto extends SellerResponseDto {
  const factory _SellerResponseDto({required List<SellerDto> sellers}) =
      _$_SellerResponseDto;
  const _SellerResponseDto._() : super._();

  factory _SellerResponseDto.fromJson(Map<String, dynamic> json) =
      _$_SellerResponseDto.fromJson;

  @override
  List<SellerDto> get sellers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SellerResponseDtoCopyWith<_SellerResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SellerDto _$SellerDtoFromJson(Map<String, dynamic> json) {
  return _SellerDto.fromJson(json);
}

/// @nodoc
class _$SellerDtoTearOff {
  const _$SellerDtoTearOff();

  _SellerDto call(
      {required String slNo,
      required String sellerName,
      required String sellerProfilePhoto,
      required String sellerItemPhoto,
      required String ezShopName,
      required double defaultPushScore,
      required String? aboutCompany,
      required int allowCOD,
      required String? division,
      required String? subDivision,
      required String? city,
      required String? zipcode,
      required String country,
      required String currencyCode,
      required int orderQty,
      required int orderAmount,
      required int salesQty,
      required int salesAmount,
      required int highestDiscountPercent,
      required String lastAddToCart,
      required String lastAddToCartThatSold}) {
    return _SellerDto(
      slNo: slNo,
      sellerName: sellerName,
      sellerProfilePhoto: sellerProfilePhoto,
      sellerItemPhoto: sellerItemPhoto,
      ezShopName: ezShopName,
      defaultPushScore: defaultPushScore,
      aboutCompany: aboutCompany,
      allowCOD: allowCOD,
      division: division,
      subDivision: subDivision,
      city: city,
      zipcode: zipcode,
      country: country,
      currencyCode: currencyCode,
      orderQty: orderQty,
      orderAmount: orderAmount,
      salesQty: salesQty,
      salesAmount: salesAmount,
      highestDiscountPercent: highestDiscountPercent,
      lastAddToCart: lastAddToCart,
      lastAddToCartThatSold: lastAddToCartThatSold,
    );
  }

  SellerDto fromJson(Map<String, Object> json) {
    return SellerDto.fromJson(json);
  }
}

/// @nodoc
const $SellerDto = _$SellerDtoTearOff();

/// @nodoc
mixin _$SellerDto {
  String get slNo => throw _privateConstructorUsedError;
  String get sellerName => throw _privateConstructorUsedError;
  String get sellerProfilePhoto => throw _privateConstructorUsedError;
  String get sellerItemPhoto => throw _privateConstructorUsedError;
  String get ezShopName => throw _privateConstructorUsedError;
  double get defaultPushScore => throw _privateConstructorUsedError;
  String? get aboutCompany => throw _privateConstructorUsedError;
  int get allowCOD => throw _privateConstructorUsedError;
  String? get division => throw _privateConstructorUsedError;
  String? get subDivision => throw _privateConstructorUsedError;
  String? get city =>
      throw _privateConstructorUsedError; //required String? state,
  String? get zipcode => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  int get orderQty => throw _privateConstructorUsedError;
  int get orderAmount => throw _privateConstructorUsedError;
  int get salesQty => throw _privateConstructorUsedError;
  int get salesAmount => throw _privateConstructorUsedError;
  int get highestDiscountPercent => throw _privateConstructorUsedError;
  String get lastAddToCart => throw _privateConstructorUsedError;
  String get lastAddToCartThatSold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SellerDtoCopyWith<SellerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerDtoCopyWith<$Res> {
  factory $SellerDtoCopyWith(SellerDto value, $Res Function(SellerDto) then) =
      _$SellerDtoCopyWithImpl<$Res>;
  $Res call(
      {String slNo,
      String sellerName,
      String sellerProfilePhoto,
      String sellerItemPhoto,
      String ezShopName,
      double defaultPushScore,
      String? aboutCompany,
      int allowCOD,
      String? division,
      String? subDivision,
      String? city,
      String? zipcode,
      String country,
      String currencyCode,
      int orderQty,
      int orderAmount,
      int salesQty,
      int salesAmount,
      int highestDiscountPercent,
      String lastAddToCart,
      String lastAddToCartThatSold});
}

/// @nodoc
class _$SellerDtoCopyWithImpl<$Res> implements $SellerDtoCopyWith<$Res> {
  _$SellerDtoCopyWithImpl(this._value, this._then);

  final SellerDto _value;
  // ignore: unused_field
  final $Res Function(SellerDto) _then;

  @override
  $Res call({
    Object? slNo = freezed,
    Object? sellerName = freezed,
    Object? sellerProfilePhoto = freezed,
    Object? sellerItemPhoto = freezed,
    Object? ezShopName = freezed,
    Object? defaultPushScore = freezed,
    Object? aboutCompany = freezed,
    Object? allowCOD = freezed,
    Object? division = freezed,
    Object? subDivision = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? country = freezed,
    Object? currencyCode = freezed,
    Object? orderQty = freezed,
    Object? orderAmount = freezed,
    Object? salesQty = freezed,
    Object? salesAmount = freezed,
    Object? highestDiscountPercent = freezed,
    Object? lastAddToCart = freezed,
    Object? lastAddToCartThatSold = freezed,
  }) {
    return _then(_value.copyWith(
      slNo: slNo == freezed
          ? _value.slNo
          : slNo // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: sellerName == freezed
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerProfilePhoto: sellerProfilePhoto == freezed
          ? _value.sellerProfilePhoto
          : sellerProfilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      sellerItemPhoto: sellerItemPhoto == freezed
          ? _value.sellerItemPhoto
          : sellerItemPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      ezShopName: ezShopName == freezed
          ? _value.ezShopName
          : ezShopName // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPushScore: defaultPushScore == freezed
          ? _value.defaultPushScore
          : defaultPushScore // ignore: cast_nullable_to_non_nullable
              as double,
      aboutCompany: aboutCompany == freezed
          ? _value.aboutCompany
          : aboutCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCOD: allowCOD == freezed
          ? _value.allowCOD
          : allowCOD // ignore: cast_nullable_to_non_nullable
              as int,
      division: division == freezed
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String?,
      subDivision: subDivision == freezed
          ? _value.subDivision
          : subDivision // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      orderQty: orderQty == freezed
          ? _value.orderQty
          : orderQty // ignore: cast_nullable_to_non_nullable
              as int,
      orderAmount: orderAmount == freezed
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as int,
      salesQty: salesQty == freezed
          ? _value.salesQty
          : salesQty // ignore: cast_nullable_to_non_nullable
              as int,
      salesAmount: salesAmount == freezed
          ? _value.salesAmount
          : salesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      highestDiscountPercent: highestDiscountPercent == freezed
          ? _value.highestDiscountPercent
          : highestDiscountPercent // ignore: cast_nullable_to_non_nullable
              as int,
      lastAddToCart: lastAddToCart == freezed
          ? _value.lastAddToCart
          : lastAddToCart // ignore: cast_nullable_to_non_nullable
              as String,
      lastAddToCartThatSold: lastAddToCartThatSold == freezed
          ? _value.lastAddToCartThatSold
          : lastAddToCartThatSold // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SellerDtoCopyWith<$Res> implements $SellerDtoCopyWith<$Res> {
  factory _$SellerDtoCopyWith(
          _SellerDto value, $Res Function(_SellerDto) then) =
      __$SellerDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String slNo,
      String sellerName,
      String sellerProfilePhoto,
      String sellerItemPhoto,
      String ezShopName,
      double defaultPushScore,
      String? aboutCompany,
      int allowCOD,
      String? division,
      String? subDivision,
      String? city,
      String? zipcode,
      String country,
      String currencyCode,
      int orderQty,
      int orderAmount,
      int salesQty,
      int salesAmount,
      int highestDiscountPercent,
      String lastAddToCart,
      String lastAddToCartThatSold});
}

/// @nodoc
class __$SellerDtoCopyWithImpl<$Res> extends _$SellerDtoCopyWithImpl<$Res>
    implements _$SellerDtoCopyWith<$Res> {
  __$SellerDtoCopyWithImpl(_SellerDto _value, $Res Function(_SellerDto) _then)
      : super(_value, (v) => _then(v as _SellerDto));

  @override
  _SellerDto get _value => super._value as _SellerDto;

  @override
  $Res call({
    Object? slNo = freezed,
    Object? sellerName = freezed,
    Object? sellerProfilePhoto = freezed,
    Object? sellerItemPhoto = freezed,
    Object? ezShopName = freezed,
    Object? defaultPushScore = freezed,
    Object? aboutCompany = freezed,
    Object? allowCOD = freezed,
    Object? division = freezed,
    Object? subDivision = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? country = freezed,
    Object? currencyCode = freezed,
    Object? orderQty = freezed,
    Object? orderAmount = freezed,
    Object? salesQty = freezed,
    Object? salesAmount = freezed,
    Object? highestDiscountPercent = freezed,
    Object? lastAddToCart = freezed,
    Object? lastAddToCartThatSold = freezed,
  }) {
    return _then(_SellerDto(
      slNo: slNo == freezed
          ? _value.slNo
          : slNo // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: sellerName == freezed
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerProfilePhoto: sellerProfilePhoto == freezed
          ? _value.sellerProfilePhoto
          : sellerProfilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      sellerItemPhoto: sellerItemPhoto == freezed
          ? _value.sellerItemPhoto
          : sellerItemPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      ezShopName: ezShopName == freezed
          ? _value.ezShopName
          : ezShopName // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPushScore: defaultPushScore == freezed
          ? _value.defaultPushScore
          : defaultPushScore // ignore: cast_nullable_to_non_nullable
              as double,
      aboutCompany: aboutCompany == freezed
          ? _value.aboutCompany
          : aboutCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      allowCOD: allowCOD == freezed
          ? _value.allowCOD
          : allowCOD // ignore: cast_nullable_to_non_nullable
              as int,
      division: division == freezed
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String?,
      subDivision: subDivision == freezed
          ? _value.subDivision
          : subDivision // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      orderQty: orderQty == freezed
          ? _value.orderQty
          : orderQty // ignore: cast_nullable_to_non_nullable
              as int,
      orderAmount: orderAmount == freezed
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as int,
      salesQty: salesQty == freezed
          ? _value.salesQty
          : salesQty // ignore: cast_nullable_to_non_nullable
              as int,
      salesAmount: salesAmount == freezed
          ? _value.salesAmount
          : salesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      highestDiscountPercent: highestDiscountPercent == freezed
          ? _value.highestDiscountPercent
          : highestDiscountPercent // ignore: cast_nullable_to_non_nullable
              as int,
      lastAddToCart: lastAddToCart == freezed
          ? _value.lastAddToCart
          : lastAddToCart // ignore: cast_nullable_to_non_nullable
              as String,
      lastAddToCartThatSold: lastAddToCartThatSold == freezed
          ? _value.lastAddToCartThatSold
          : lastAddToCartThatSold // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SellerDto extends _SellerDto {
  const _$_SellerDto(
      {required this.slNo,
      required this.sellerName,
      required this.sellerProfilePhoto,
      required this.sellerItemPhoto,
      required this.ezShopName,
      required this.defaultPushScore,
      required this.aboutCompany,
      required this.allowCOD,
      required this.division,
      required this.subDivision,
      required this.city,
      required this.zipcode,
      required this.country,
      required this.currencyCode,
      required this.orderQty,
      required this.orderAmount,
      required this.salesQty,
      required this.salesAmount,
      required this.highestDiscountPercent,
      required this.lastAddToCart,
      required this.lastAddToCartThatSold})
      : super._();

  factory _$_SellerDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SellerDtoFromJson(json);

  @override
  final String slNo;
  @override
  final String sellerName;
  @override
  final String sellerProfilePhoto;
  @override
  final String sellerItemPhoto;
  @override
  final String ezShopName;
  @override
  final double defaultPushScore;
  @override
  final String? aboutCompany;
  @override
  final int allowCOD;
  @override
  final String? division;
  @override
  final String? subDivision;
  @override
  final String? city;
  @override //required String? state,
  final String? zipcode;
  @override
  final String country;
  @override
  final String currencyCode;
  @override
  final int orderQty;
  @override
  final int orderAmount;
  @override
  final int salesQty;
  @override
  final int salesAmount;
  @override
  final int highestDiscountPercent;
  @override
  final String lastAddToCart;
  @override
  final String lastAddToCartThatSold;

  @override
  String toString() {
    return 'SellerDto(slNo: $slNo, sellerName: $sellerName, sellerProfilePhoto: $sellerProfilePhoto, sellerItemPhoto: $sellerItemPhoto, ezShopName: $ezShopName, defaultPushScore: $defaultPushScore, aboutCompany: $aboutCompany, allowCOD: $allowCOD, division: $division, subDivision: $subDivision, city: $city, zipcode: $zipcode, country: $country, currencyCode: $currencyCode, orderQty: $orderQty, orderAmount: $orderAmount, salesQty: $salesQty, salesAmount: $salesAmount, highestDiscountPercent: $highestDiscountPercent, lastAddToCart: $lastAddToCart, lastAddToCartThatSold: $lastAddToCartThatSold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SellerDto &&
            (identical(other.slNo, slNo) ||
                const DeepCollectionEquality().equals(other.slNo, slNo)) &&
            (identical(other.sellerName, sellerName) ||
                const DeepCollectionEquality()
                    .equals(other.sellerName, sellerName)) &&
            (identical(other.sellerProfilePhoto, sellerProfilePhoto) ||
                const DeepCollectionEquality()
                    .equals(other.sellerProfilePhoto, sellerProfilePhoto)) &&
            (identical(other.sellerItemPhoto, sellerItemPhoto) ||
                const DeepCollectionEquality()
                    .equals(other.sellerItemPhoto, sellerItemPhoto)) &&
            (identical(other.ezShopName, ezShopName) ||
                const DeepCollectionEquality()
                    .equals(other.ezShopName, ezShopName)) &&
            (identical(other.defaultPushScore, defaultPushScore) ||
                const DeepCollectionEquality()
                    .equals(other.defaultPushScore, defaultPushScore)) &&
            (identical(other.aboutCompany, aboutCompany) ||
                const DeepCollectionEquality()
                    .equals(other.aboutCompany, aboutCompany)) &&
            (identical(other.allowCOD, allowCOD) ||
                const DeepCollectionEquality()
                    .equals(other.allowCOD, allowCOD)) &&
            (identical(other.division, division) ||
                const DeepCollectionEquality()
                    .equals(other.division, division)) &&
            (identical(other.subDivision, subDivision) ||
                const DeepCollectionEquality()
                    .equals(other.subDivision, subDivision)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.zipcode, zipcode) ||
                const DeepCollectionEquality()
                    .equals(other.zipcode, zipcode)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)) &&
            (identical(other.orderQty, orderQty) ||
                const DeepCollectionEquality()
                    .equals(other.orderQty, orderQty)) &&
            (identical(other.orderAmount, orderAmount) ||
                const DeepCollectionEquality()
                    .equals(other.orderAmount, orderAmount)) &&
            (identical(other.salesQty, salesQty) ||
                const DeepCollectionEquality()
                    .equals(other.salesQty, salesQty)) &&
            (identical(other.salesAmount, salesAmount) ||
                const DeepCollectionEquality()
                    .equals(other.salesAmount, salesAmount)) &&
            (identical(other.highestDiscountPercent, highestDiscountPercent) ||
                const DeepCollectionEquality().equals(
                    other.highestDiscountPercent, highestDiscountPercent)) &&
            (identical(other.lastAddToCart, lastAddToCart) ||
                const DeepCollectionEquality()
                    .equals(other.lastAddToCart, lastAddToCart)) &&
            (identical(other.lastAddToCartThatSold, lastAddToCartThatSold) ||
                const DeepCollectionEquality().equals(
                    other.lastAddToCartThatSold, lastAddToCartThatSold)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(slNo) ^
      const DeepCollectionEquality().hash(sellerName) ^
      const DeepCollectionEquality().hash(sellerProfilePhoto) ^
      const DeepCollectionEquality().hash(sellerItemPhoto) ^
      const DeepCollectionEquality().hash(ezShopName) ^
      const DeepCollectionEquality().hash(defaultPushScore) ^
      const DeepCollectionEquality().hash(aboutCompany) ^
      const DeepCollectionEquality().hash(allowCOD) ^
      const DeepCollectionEquality().hash(division) ^
      const DeepCollectionEquality().hash(subDivision) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(zipcode) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      const DeepCollectionEquality().hash(orderQty) ^
      const DeepCollectionEquality().hash(orderAmount) ^
      const DeepCollectionEquality().hash(salesQty) ^
      const DeepCollectionEquality().hash(salesAmount) ^
      const DeepCollectionEquality().hash(highestDiscountPercent) ^
      const DeepCollectionEquality().hash(lastAddToCart) ^
      const DeepCollectionEquality().hash(lastAddToCartThatSold);

  @JsonKey(ignore: true)
  @override
  _$SellerDtoCopyWith<_SellerDto> get copyWith =>
      __$SellerDtoCopyWithImpl<_SellerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SellerDtoToJson(this);
  }
}

abstract class _SellerDto extends SellerDto {
  const factory _SellerDto(
      {required String slNo,
      required String sellerName,
      required String sellerProfilePhoto,
      required String sellerItemPhoto,
      required String ezShopName,
      required double defaultPushScore,
      required String? aboutCompany,
      required int allowCOD,
      required String? division,
      required String? subDivision,
      required String? city,
      required String? zipcode,
      required String country,
      required String currencyCode,
      required int orderQty,
      required int orderAmount,
      required int salesQty,
      required int salesAmount,
      required int highestDiscountPercent,
      required String lastAddToCart,
      required String lastAddToCartThatSold}) = _$_SellerDto;
  const _SellerDto._() : super._();

  factory _SellerDto.fromJson(Map<String, dynamic> json) =
      _$_SellerDto.fromJson;

  @override
  String get slNo => throw _privateConstructorUsedError;
  @override
  String get sellerName => throw _privateConstructorUsedError;
  @override
  String get sellerProfilePhoto => throw _privateConstructorUsedError;
  @override
  String get sellerItemPhoto => throw _privateConstructorUsedError;
  @override
  String get ezShopName => throw _privateConstructorUsedError;
  @override
  double get defaultPushScore => throw _privateConstructorUsedError;
  @override
  String? get aboutCompany => throw _privateConstructorUsedError;
  @override
  int get allowCOD => throw _privateConstructorUsedError;
  @override
  String? get division => throw _privateConstructorUsedError;
  @override
  String? get subDivision => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override //required String? state,
  String? get zipcode => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String get currencyCode => throw _privateConstructorUsedError;
  @override
  int get orderQty => throw _privateConstructorUsedError;
  @override
  int get orderAmount => throw _privateConstructorUsedError;
  @override
  int get salesQty => throw _privateConstructorUsedError;
  @override
  int get salesAmount => throw _privateConstructorUsedError;
  @override
  int get highestDiscountPercent => throw _privateConstructorUsedError;
  @override
  String get lastAddToCart => throw _privateConstructorUsedError;
  @override
  String get lastAddToCartThatSold => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SellerDtoCopyWith<_SellerDto> get copyWith =>
      throw _privateConstructorUsedError;
}