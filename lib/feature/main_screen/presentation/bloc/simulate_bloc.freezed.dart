// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simulate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SimulateEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimulateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SimulateEvent()';
}


}

/// @nodoc
class $SimulateEventCopyWith<$Res>  {
$SimulateEventCopyWith(SimulateEvent _, $Res Function(SimulateEvent) __);
}


/// Adds pattern-matching-related methods to [SimulateEvent].
extension SimulateEventPatterns on SimulateEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ResetResult value)?  resetResult,TResult Function( _NewResult value)?  newResult,TResult Function( _WaterEnvSelect value)?  onWaterEnvSelect,TResult Function( _SunLightEnvSelect value)?  onSunLightEnvSelect,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetResult() when resetResult != null:
return resetResult(_that);case _NewResult() when newResult != null:
return newResult(_that);case _WaterEnvSelect() when onWaterEnvSelect != null:
return onWaterEnvSelect(_that);case _SunLightEnvSelect() when onSunLightEnvSelect != null:
return onSunLightEnvSelect(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ResetResult value)  resetResult,required TResult Function( _NewResult value)  newResult,required TResult Function( _WaterEnvSelect value)  onWaterEnvSelect,required TResult Function( _SunLightEnvSelect value)  onSunLightEnvSelect,}){
final _that = this;
switch (_that) {
case _ResetResult():
return resetResult(_that);case _NewResult():
return newResult(_that);case _WaterEnvSelect():
return onWaterEnvSelect(_that);case _SunLightEnvSelect():
return onSunLightEnvSelect(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ResetResult value)?  resetResult,TResult? Function( _NewResult value)?  newResult,TResult? Function( _WaterEnvSelect value)?  onWaterEnvSelect,TResult? Function( _SunLightEnvSelect value)?  onSunLightEnvSelect,}){
final _that = this;
switch (_that) {
case _ResetResult() when resetResult != null:
return resetResult(_that);case _NewResult() when newResult != null:
return newResult(_that);case _WaterEnvSelect() when onWaterEnvSelect != null:
return onWaterEnvSelect(_that);case _SunLightEnvSelect() when onSunLightEnvSelect != null:
return onSunLightEnvSelect(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  resetResult,TResult Function( String simId,  String waterEnv,  String sunlightEnv)?  newResult,TResult Function( String waterEnv)?  onWaterEnvSelect,TResult Function( String sunlightEnv)?  onSunLightEnvSelect,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetResult() when resetResult != null:
return resetResult();case _NewResult() when newResult != null:
return newResult(_that.simId,_that.waterEnv,_that.sunlightEnv);case _WaterEnvSelect() when onWaterEnvSelect != null:
return onWaterEnvSelect(_that.waterEnv);case _SunLightEnvSelect() when onSunLightEnvSelect != null:
return onSunLightEnvSelect(_that.sunlightEnv);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  resetResult,required TResult Function( String simId,  String waterEnv,  String sunlightEnv)  newResult,required TResult Function( String waterEnv)  onWaterEnvSelect,required TResult Function( String sunlightEnv)  onSunLightEnvSelect,}) {final _that = this;
switch (_that) {
case _ResetResult():
return resetResult();case _NewResult():
return newResult(_that.simId,_that.waterEnv,_that.sunlightEnv);case _WaterEnvSelect():
return onWaterEnvSelect(_that.waterEnv);case _SunLightEnvSelect():
return onSunLightEnvSelect(_that.sunlightEnv);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  resetResult,TResult? Function( String simId,  String waterEnv,  String sunlightEnv)?  newResult,TResult? Function( String waterEnv)?  onWaterEnvSelect,TResult? Function( String sunlightEnv)?  onSunLightEnvSelect,}) {final _that = this;
switch (_that) {
case _ResetResult() when resetResult != null:
return resetResult();case _NewResult() when newResult != null:
return newResult(_that.simId,_that.waterEnv,_that.sunlightEnv);case _WaterEnvSelect() when onWaterEnvSelect != null:
return onWaterEnvSelect(_that.waterEnv);case _SunLightEnvSelect() when onSunLightEnvSelect != null:
return onSunLightEnvSelect(_that.sunlightEnv);case _:
  return null;

}
}

}

/// @nodoc


class _ResetResult implements SimulateEvent {
  const _ResetResult();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SimulateEvent.resetResult()';
}


}




/// @nodoc


class _NewResult implements SimulateEvent {
  const _NewResult({required this.simId, required this.waterEnv, required this.sunlightEnv});
  

 final  String simId;
 final  String waterEnv;
 final  String sunlightEnv;

/// Create a copy of SimulateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewResultCopyWith<_NewResult> get copyWith => __$NewResultCopyWithImpl<_NewResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewResult&&(identical(other.simId, simId) || other.simId == simId)&&(identical(other.waterEnv, waterEnv) || other.waterEnv == waterEnv)&&(identical(other.sunlightEnv, sunlightEnv) || other.sunlightEnv == sunlightEnv));
}


@override
int get hashCode => Object.hash(runtimeType,simId,waterEnv,sunlightEnv);

@override
String toString() {
  return 'SimulateEvent.newResult(simId: $simId, waterEnv: $waterEnv, sunlightEnv: $sunlightEnv)';
}


}

/// @nodoc
abstract mixin class _$NewResultCopyWith<$Res> implements $SimulateEventCopyWith<$Res> {
  factory _$NewResultCopyWith(_NewResult value, $Res Function(_NewResult) _then) = __$NewResultCopyWithImpl;
@useResult
$Res call({
 String simId, String waterEnv, String sunlightEnv
});




}
/// @nodoc
class __$NewResultCopyWithImpl<$Res>
    implements _$NewResultCopyWith<$Res> {
  __$NewResultCopyWithImpl(this._self, this._then);

  final _NewResult _self;
  final $Res Function(_NewResult) _then;

/// Create a copy of SimulateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? simId = null,Object? waterEnv = null,Object? sunlightEnv = null,}) {
  return _then(_NewResult(
simId: null == simId ? _self.simId : simId // ignore: cast_nullable_to_non_nullable
as String,waterEnv: null == waterEnv ? _self.waterEnv : waterEnv // ignore: cast_nullable_to_non_nullable
as String,sunlightEnv: null == sunlightEnv ? _self.sunlightEnv : sunlightEnv // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _WaterEnvSelect implements SimulateEvent {
  const _WaterEnvSelect({required this.waterEnv});
  

 final  String waterEnv;

/// Create a copy of SimulateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WaterEnvSelectCopyWith<_WaterEnvSelect> get copyWith => __$WaterEnvSelectCopyWithImpl<_WaterEnvSelect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WaterEnvSelect&&(identical(other.waterEnv, waterEnv) || other.waterEnv == waterEnv));
}


@override
int get hashCode => Object.hash(runtimeType,waterEnv);

@override
String toString() {
  return 'SimulateEvent.onWaterEnvSelect(waterEnv: $waterEnv)';
}


}

/// @nodoc
abstract mixin class _$WaterEnvSelectCopyWith<$Res> implements $SimulateEventCopyWith<$Res> {
  factory _$WaterEnvSelectCopyWith(_WaterEnvSelect value, $Res Function(_WaterEnvSelect) _then) = __$WaterEnvSelectCopyWithImpl;
@useResult
$Res call({
 String waterEnv
});




}
/// @nodoc
class __$WaterEnvSelectCopyWithImpl<$Res>
    implements _$WaterEnvSelectCopyWith<$Res> {
  __$WaterEnvSelectCopyWithImpl(this._self, this._then);

  final _WaterEnvSelect _self;
  final $Res Function(_WaterEnvSelect) _then;

/// Create a copy of SimulateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? waterEnv = null,}) {
  return _then(_WaterEnvSelect(
waterEnv: null == waterEnv ? _self.waterEnv : waterEnv // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SunLightEnvSelect implements SimulateEvent {
  const _SunLightEnvSelect({required this.sunlightEnv});
  

 final  String sunlightEnv;

/// Create a copy of SimulateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SunLightEnvSelectCopyWith<_SunLightEnvSelect> get copyWith => __$SunLightEnvSelectCopyWithImpl<_SunLightEnvSelect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SunLightEnvSelect&&(identical(other.sunlightEnv, sunlightEnv) || other.sunlightEnv == sunlightEnv));
}


@override
int get hashCode => Object.hash(runtimeType,sunlightEnv);

@override
String toString() {
  return 'SimulateEvent.onSunLightEnvSelect(sunlightEnv: $sunlightEnv)';
}


}

/// @nodoc
abstract mixin class _$SunLightEnvSelectCopyWith<$Res> implements $SimulateEventCopyWith<$Res> {
  factory _$SunLightEnvSelectCopyWith(_SunLightEnvSelect value, $Res Function(_SunLightEnvSelect) _then) = __$SunLightEnvSelectCopyWithImpl;
@useResult
$Res call({
 String sunlightEnv
});




}
/// @nodoc
class __$SunLightEnvSelectCopyWithImpl<$Res>
    implements _$SunLightEnvSelectCopyWith<$Res> {
  __$SunLightEnvSelectCopyWithImpl(this._self, this._then);

  final _SunLightEnvSelect _self;
  final $Res Function(_SunLightEnvSelect) _then;

/// Create a copy of SimulateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sunlightEnv = null,}) {
  return _then(_SunLightEnvSelect(
sunlightEnv: null == sunlightEnv ? _self.sunlightEnv : sunlightEnv // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SimulateState {

 SimulateResultEntity? get simulatedResult; bool get isFetching; bool get isError; String? get errorMessage; String? get successMessage;
/// Create a copy of SimulateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimulateStateCopyWith<SimulateState> get copyWith => _$SimulateStateCopyWithImpl<SimulateState>(this as SimulateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimulateState&&(identical(other.simulatedResult, simulatedResult) || other.simulatedResult == simulatedResult)&&(identical(other.isFetching, isFetching) || other.isFetching == isFetching)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,simulatedResult,isFetching,isError,errorMessage,successMessage);

@override
String toString() {
  return 'SimulateState(simulatedResult: $simulatedResult, isFetching: $isFetching, isError: $isError, errorMessage: $errorMessage, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class $SimulateStateCopyWith<$Res>  {
  factory $SimulateStateCopyWith(SimulateState value, $Res Function(SimulateState) _then) = _$SimulateStateCopyWithImpl;
@useResult
$Res call({
 SimulateResultEntity? simulatedResult, bool isFetching, bool isError, String? errorMessage, String? successMessage
});




}
/// @nodoc
class _$SimulateStateCopyWithImpl<$Res>
    implements $SimulateStateCopyWith<$Res> {
  _$SimulateStateCopyWithImpl(this._self, this._then);

  final SimulateState _self;
  final $Res Function(SimulateState) _then;

/// Create a copy of SimulateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? simulatedResult = freezed,Object? isFetching = null,Object? isError = null,Object? errorMessage = freezed,Object? successMessage = freezed,}) {
  return _then(_self.copyWith(
simulatedResult: freezed == simulatedResult ? _self.simulatedResult : simulatedResult // ignore: cast_nullable_to_non_nullable
as SimulateResultEntity?,isFetching: null == isFetching ? _self.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SimulateState].
extension SimulateStatePatterns on SimulateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SimulateState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SimulateState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SimulateState value)  $default,){
final _that = this;
switch (_that) {
case _SimulateState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SimulateState value)?  $default,){
final _that = this;
switch (_that) {
case _SimulateState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SimulateResultEntity? simulatedResult,  bool isFetching,  bool isError,  String? errorMessage,  String? successMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SimulateState() when $default != null:
return $default(_that.simulatedResult,_that.isFetching,_that.isError,_that.errorMessage,_that.successMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SimulateResultEntity? simulatedResult,  bool isFetching,  bool isError,  String? errorMessage,  String? successMessage)  $default,) {final _that = this;
switch (_that) {
case _SimulateState():
return $default(_that.simulatedResult,_that.isFetching,_that.isError,_that.errorMessage,_that.successMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SimulateResultEntity? simulatedResult,  bool isFetching,  bool isError,  String? errorMessage,  String? successMessage)?  $default,) {final _that = this;
switch (_that) {
case _SimulateState() when $default != null:
return $default(_that.simulatedResult,_that.isFetching,_that.isError,_that.errorMessage,_that.successMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SimulateState implements SimulateState {
  const _SimulateState({this.simulatedResult, this.isFetching = false, this.isError = false, this.errorMessage, this.successMessage});
  

@override final  SimulateResultEntity? simulatedResult;
@override@JsonKey() final  bool isFetching;
@override@JsonKey() final  bool isError;
@override final  String? errorMessage;
@override final  String? successMessage;

/// Create a copy of SimulateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimulateStateCopyWith<_SimulateState> get copyWith => __$SimulateStateCopyWithImpl<_SimulateState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimulateState&&(identical(other.simulatedResult, simulatedResult) || other.simulatedResult == simulatedResult)&&(identical(other.isFetching, isFetching) || other.isFetching == isFetching)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,simulatedResult,isFetching,isError,errorMessage,successMessage);

@override
String toString() {
  return 'SimulateState(simulatedResult: $simulatedResult, isFetching: $isFetching, isError: $isError, errorMessage: $errorMessage, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class _$SimulateStateCopyWith<$Res> implements $SimulateStateCopyWith<$Res> {
  factory _$SimulateStateCopyWith(_SimulateState value, $Res Function(_SimulateState) _then) = __$SimulateStateCopyWithImpl;
@override @useResult
$Res call({
 SimulateResultEntity? simulatedResult, bool isFetching, bool isError, String? errorMessage, String? successMessage
});




}
/// @nodoc
class __$SimulateStateCopyWithImpl<$Res>
    implements _$SimulateStateCopyWith<$Res> {
  __$SimulateStateCopyWithImpl(this._self, this._then);

  final _SimulateState _self;
  final $Res Function(_SimulateState) _then;

/// Create a copy of SimulateState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? simulatedResult = freezed,Object? isFetching = null,Object? isError = null,Object? errorMessage = freezed,Object? successMessage = freezed,}) {
  return _then(_SimulateState(
simulatedResult: freezed == simulatedResult ? _self.simulatedResult : simulatedResult // ignore: cast_nullable_to_non_nullable
as SimulateResultEntity?,isFetching: null == isFetching ? _self.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
