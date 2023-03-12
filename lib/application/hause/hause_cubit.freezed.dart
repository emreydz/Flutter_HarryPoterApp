// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hause_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HauseState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<CharactersModel> get hause => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HauseStateCopyWith<HauseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HauseStateCopyWith<$Res> {
  factory $HauseStateCopyWith(
          HauseState value, $Res Function(HauseState) then) =
      _$HauseStateCopyWithImpl<$Res, HauseState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String errorMessage,
      List<CharactersModel> hause});
}

/// @nodoc
class _$HauseStateCopyWithImpl<$Res, $Val extends HauseState>
    implements $HauseStateCopyWith<$Res> {
  _$HauseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? hause = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      hause: null == hause
          ? _value.hause
          : hause // ignore: cast_nullable_to_non_nullable
              as List<CharactersModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HauseStateCopyWith<$Res>
    implements $HauseStateCopyWith<$Res> {
  factory _$$_HauseStateCopyWith(
          _$_HauseState value, $Res Function(_$_HauseState) then) =
      __$$_HauseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String errorMessage,
      List<CharactersModel> hause});
}

/// @nodoc
class __$$_HauseStateCopyWithImpl<$Res>
    extends _$HauseStateCopyWithImpl<$Res, _$_HauseState>
    implements _$$_HauseStateCopyWith<$Res> {
  __$$_HauseStateCopyWithImpl(
      _$_HauseState _value, $Res Function(_$_HauseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? hause = null,
  }) {
    return _then(_$_HauseState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      hause: null == hause
          ? _value._hause
          : hause // ignore: cast_nullable_to_non_nullable
              as List<CharactersModel>,
    ));
  }
}

/// @nodoc

class _$_HauseState implements _HauseState {
  const _$_HauseState(
      {required this.isLoading,
      required this.isError,
      required this.errorMessage,
      required final List<CharactersModel> hause})
      : _hause = hause;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String errorMessage;
  final List<CharactersModel> _hause;
  @override
  List<CharactersModel> get hause {
    if (_hause is EqualUnmodifiableListView) return _hause;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hause);
  }

  @override
  String toString() {
    return 'HauseState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, hause: $hause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HauseState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._hause, _hause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, errorMessage,
      const DeepCollectionEquality().hash(_hause));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HauseStateCopyWith<_$_HauseState> get copyWith =>
      __$$_HauseStateCopyWithImpl<_$_HauseState>(this, _$identity);
}

abstract class _HauseState implements HauseState {
  const factory _HauseState(
      {required final bool isLoading,
      required final bool isError,
      required final String errorMessage,
      required final List<CharactersModel> hause}) = _$_HauseState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  List<CharactersModel> get hause;
  @override
  @JsonKey(ignore: true)
  _$$_HauseStateCopyWith<_$_HauseState> get copyWith =>
      throw _privateConstructorUsedError;
}
