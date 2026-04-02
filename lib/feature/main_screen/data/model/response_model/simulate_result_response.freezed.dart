// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simulate_result_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimulateResultResponse {

 String get id; int get day; int get health; int get growth; String get water; String get sunlight;@JsonKey(name: 'status_msg') String get statusMsg;
/// Create a copy of SimulateResultResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimulateResultResponseCopyWith<SimulateResultResponse> get copyWith => _$SimulateResultResponseCopyWithImpl<SimulateResultResponse>(this as SimulateResultResponse, _$identity);

  /// Serializes this SimulateResultResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimulateResultResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.day, day) || other.day == day)&&(identical(other.health, health) || other.health == health)&&(identical(other.growth, growth) || other.growth == growth)&&(identical(other.water, water) || other.water == water)&&(identical(other.sunlight, sunlight) || other.sunlight == sunlight)&&(identical(other.statusMsg, statusMsg) || other.statusMsg == statusMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,day,health,growth,water,sunlight,statusMsg);

@override
String toString() {
  return 'SimulateResultResponse(id: $id, day: $day, health: $health, growth: $growth, water: $water, sunlight: $sunlight, statusMsg: $statusMsg)';
}


}

/// @nodoc
abstract mixin class $SimulateResultResponseCopyWith<$Res>  {
  factory $SimulateResultResponseCopyWith(SimulateResultResponse value, $Res Function(SimulateResultResponse) _then) = _$SimulateResultResponseCopyWithImpl;
@useResult
$Res call({
 String id, int day, int health, int growth, String water, String sunlight,@JsonKey(name: 'status_msg') String statusMsg
});




}
/// @nodoc
class _$SimulateResultResponseCopyWithImpl<$Res>
    implements $SimulateResultResponseCopyWith<$Res> {
  _$SimulateResultResponseCopyWithImpl(this._self, this._then);

  final SimulateResultResponse _self;
  final $Res Function(SimulateResultResponse) _then;

/// Create a copy of SimulateResultResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? day = null,Object? health = null,Object? growth = null,Object? water = null,Object? sunlight = null,Object? statusMsg = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,health: null == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as int,growth: null == growth ? _self.growth : growth // ignore: cast_nullable_to_non_nullable
as int,water: null == water ? _self.water : water // ignore: cast_nullable_to_non_nullable
as String,sunlight: null == sunlight ? _self.sunlight : sunlight // ignore: cast_nullable_to_non_nullable
as String,statusMsg: null == statusMsg ? _self.statusMsg : statusMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SimulateResultResponse].
extension SimulateResultResponsePatterns on SimulateResultResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SimulateResultResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SimulateResultResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SimulateResultResponse value)  $default,){
final _that = this;
switch (_that) {
case _SimulateResultResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SimulateResultResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SimulateResultResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int day,  int health,  int growth,  String water,  String sunlight, @JsonKey(name: 'status_msg')  String statusMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SimulateResultResponse() when $default != null:
return $default(_that.id,_that.day,_that.health,_that.growth,_that.water,_that.sunlight,_that.statusMsg);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int day,  int health,  int growth,  String water,  String sunlight, @JsonKey(name: 'status_msg')  String statusMsg)  $default,) {final _that = this;
switch (_that) {
case _SimulateResultResponse():
return $default(_that.id,_that.day,_that.health,_that.growth,_that.water,_that.sunlight,_that.statusMsg);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int day,  int health,  int growth,  String water,  String sunlight, @JsonKey(name: 'status_msg')  String statusMsg)?  $default,) {final _that = this;
switch (_that) {
case _SimulateResultResponse() when $default != null:
return $default(_that.id,_that.day,_that.health,_that.growth,_that.water,_that.sunlight,_that.statusMsg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SimulateResultResponse implements SimulateResultResponse {
  const _SimulateResultResponse({required this.id, required this.day, required this.health, required this.growth, required this.water, required this.sunlight, @JsonKey(name: 'status_msg') required this.statusMsg});
  factory _SimulateResultResponse.fromJson(Map<String, dynamic> json) => _$SimulateResultResponseFromJson(json);

@override final  String id;
@override final  int day;
@override final  int health;
@override final  int growth;
@override final  String water;
@override final  String sunlight;
@override@JsonKey(name: 'status_msg') final  String statusMsg;

/// Create a copy of SimulateResultResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimulateResultResponseCopyWith<_SimulateResultResponse> get copyWith => __$SimulateResultResponseCopyWithImpl<_SimulateResultResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimulateResultResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimulateResultResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.day, day) || other.day == day)&&(identical(other.health, health) || other.health == health)&&(identical(other.growth, growth) || other.growth == growth)&&(identical(other.water, water) || other.water == water)&&(identical(other.sunlight, sunlight) || other.sunlight == sunlight)&&(identical(other.statusMsg, statusMsg) || other.statusMsg == statusMsg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,day,health,growth,water,sunlight,statusMsg);

@override
String toString() {
  return 'SimulateResultResponse(id: $id, day: $day, health: $health, growth: $growth, water: $water, sunlight: $sunlight, statusMsg: $statusMsg)';
}


}

/// @nodoc
abstract mixin class _$SimulateResultResponseCopyWith<$Res> implements $SimulateResultResponseCopyWith<$Res> {
  factory _$SimulateResultResponseCopyWith(_SimulateResultResponse value, $Res Function(_SimulateResultResponse) _then) = __$SimulateResultResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, int day, int health, int growth, String water, String sunlight,@JsonKey(name: 'status_msg') String statusMsg
});




}
/// @nodoc
class __$SimulateResultResponseCopyWithImpl<$Res>
    implements _$SimulateResultResponseCopyWith<$Res> {
  __$SimulateResultResponseCopyWithImpl(this._self, this._then);

  final _SimulateResultResponse _self;
  final $Res Function(_SimulateResultResponse) _then;

/// Create a copy of SimulateResultResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? day = null,Object? health = null,Object? growth = null,Object? water = null,Object? sunlight = null,Object? statusMsg = null,}) {
  return _then(_SimulateResultResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,health: null == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as int,growth: null == growth ? _self.growth : growth // ignore: cast_nullable_to_non_nullable
as int,water: null == water ? _self.water : water // ignore: cast_nullable_to_non_nullable
as String,sunlight: null == sunlight ? _self.sunlight : sunlight // ignore: cast_nullable_to_non_nullable
as String,statusMsg: null == statusMsg ? _self.statusMsg : statusMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
