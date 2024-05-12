// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeState {
  Themes get selectedTheme => throw _privateConstructorUsedError;
  IThemeColor get themeColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({Themes selectedTheme, IThemeColor themeColor});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTheme = null,
    Object? themeColor = null,
  }) {
    return _then(_value.copyWith(
      selectedTheme: null == selectedTheme
          ? _value.selectedTheme
          : selectedTheme // ignore: cast_nullable_to_non_nullable
              as Themes,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as IThemeColor,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeStateImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$ThemeStateImplCopyWith(
          _$ThemeStateImpl value, $Res Function(_$ThemeStateImpl) then) =
      __$$ThemeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Themes selectedTheme, IThemeColor themeColor});
}

/// @nodoc
class __$$ThemeStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateImpl>
    implements _$$ThemeStateImplCopyWith<$Res> {
  __$$ThemeStateImplCopyWithImpl(
      _$ThemeStateImpl _value, $Res Function(_$ThemeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTheme = null,
    Object? themeColor = null,
  }) {
    return _then(_$ThemeStateImpl(
      selectedTheme: null == selectedTheme
          ? _value.selectedTheme
          : selectedTheme // ignore: cast_nullable_to_non_nullable
              as Themes,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as IThemeColor,
    ));
  }
}

/// @nodoc

class _$ThemeStateImpl implements _ThemeState {
  _$ThemeStateImpl({required this.selectedTheme, required this.themeColor});

  @override
  final Themes selectedTheme;
  @override
  final IThemeColor themeColor;

  @override
  String toString() {
    return 'ThemeState(selectedTheme: $selectedTheme, themeColor: $themeColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeStateImpl &&
            (identical(other.selectedTheme, selectedTheme) ||
                other.selectedTheme == selectedTheme) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTheme, themeColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      __$$ThemeStateImplCopyWithImpl<_$ThemeStateImpl>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  factory _ThemeState(
      {required final Themes selectedTheme,
      required final IThemeColor themeColor}) = _$ThemeStateImpl;

  @override
  Themes get selectedTheme;
  @override
  IThemeColor get themeColor;
  @override
  @JsonKey(ignore: true)
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
