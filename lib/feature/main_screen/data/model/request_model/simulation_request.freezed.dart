// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simulation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimulationRequestModel {

 String get id; String get water; String get sunlight;
/// Create a copy of SimulationRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimulationRequestModelCopyWith<SimulationRequestModel> get copyWith => _$SimulationRequestModelCopyWithImpl<SimulationRequestModel>(this as SimulationRequestModel, _$identity);

  /// Serializes this SimulationRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimulationRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.water, water) || other.water == water)&&(identical(other.sunlight, sunlight) || other.sunlight == sunlight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,water,sunlight);

@override
String toString() {
  return 'SimulationRequestModel(id: $id, water: $water, sunlight: $sunlight)';
}


}

/// @nodoc
abstract mixin class $SimulationRequestModelCopyWith<$Res>  {
  factory $SimulationRequestModelCopyWith(SimulationRequestModel value, $Res Function(SimulationRequestModel) _then) = _$SimulationRequestModelCopyWithImpl;
@useResult
$Res call({
 String id, String water, String sunlight
});




}
/// @nodoc
class _$SimulationRequestModelCopyWithImpl<$Res>
    implements $SimulationRequestModelCopyWith<$Res> {
  _$SimulationRequestModelCopyWithImpl(this._self, this._then);

  final SimulationRequestModel _self;
  final $Res Function(SimulationRequestModel) _then;

/// Create a copy of SimulationRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? water = null,Object? sunlight = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,water: null == water ? _self.water : water // ignore: cast_nullable_to_non_nullable
as String,sunlight: null == sunlight ? _self.sunlight : sunlight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SimulationRequestModel].
extension SimulationRequestModelPatterns on SimulationRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SimulationRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SimulationRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SimulationRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _SimulationRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SimulationRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _SimulationRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String water,  String sunlight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SimulationRequestModel() when $default != null:
return $default(_that.id,_that.water,_that.sunlight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String water,  String sunlight)  $default,) {final _that = this;
switch (_that) {
case _SimulationRequestModel():
return $default(_that.id,_that.water,_that.sunlight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String water,  String sunlight)?  $default,) {final _that = this;
switch (_that) {
case _SimulationRequestModel() when $default != null:
return $default(_that.id,_that.water,_that.sunlight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SimulationRequestModel implements SimulationRequestModel {
  const _SimulationRequestModel({required this.id, required this.water, required this.sunlight});
  factory _SimulationRequestModel.fromJson(Map<String, dynamic> json) => _$SimulationRequestModelFromJson(json);

@override final  String id;
@override final  String water;
@override final  String sunlight;

/// Create a copy of SimulationRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimulationRequestModelCopyWith<_SimulationRequestModel> get copyWith => __$SimulationRequestModelCopyWithImpl<_SimulationRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimulationRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimulationRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.water, water) || other.water == water)&&(identical(other.sunlight, sunlight) || other.sunlight == sunlight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,water,sunlight);

@override
String toString() {
  return 'SimulationRequestModel(id: $id, water: $water, sunlight: $sunlight)';
}


}

/// @nodoc
abstract mixin class _$SimulationRequestModelCopyWith<$Res> implements $SimulationRequestModelCopyWith<$Res> {
  factory _$SimulationRequestModelCopyWith(_SimulationRequestModel value, $Res Function(_SimulationRequestModel) _then) = __$SimulationRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String water, String sunlight
});




}
/// @nodoc
class __$SimulationRequestModelCopyWithImpl<$Res>
    implements _$SimulationRequestModelCopyWith<$Res> {
  __$SimulationRequestModelCopyWithImpl(this._self, this._then);

  final _SimulationRequestModel _self;
  final $Res Function(_SimulationRequestModel) _then;

/// Create a copy of SimulationRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? water = null,Object? sunlight = null,}) {
  return _then(_SimulationRequestModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,water: null == water ? _self.water : water // ignore: cast_nullable_to_non_nullable
as String,sunlight: null == sunlight ? _self.sunlight : sunlight // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
