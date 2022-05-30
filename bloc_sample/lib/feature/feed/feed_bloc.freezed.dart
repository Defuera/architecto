// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Post> posts) data,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Post> posts)? data,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Post> posts)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateError value) error,
    required TResult Function(_FeedStateData value) data,
    required TResult Function(_FeedStateEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateError value)? error,
    TResult Function(_FeedStateData value)? data,
    TResult Function(_FeedStateEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateError value)? error,
    TResult Function(_FeedStateData value)? data,
    TResult Function(_FeedStateEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;
}

/// @nodoc
abstract class _$$_FeedStateLoadingCopyWith<$Res> {
  factory _$$_FeedStateLoadingCopyWith(
          _$_FeedStateLoading value, $Res Function(_$_FeedStateLoading) then) =
      __$$_FeedStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FeedStateLoadingCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res>
    implements _$$_FeedStateLoadingCopyWith<$Res> {
  __$$_FeedStateLoadingCopyWithImpl(
      _$_FeedStateLoading _value, $Res Function(_$_FeedStateLoading) _then)
      : super(_value, (v) => _then(v as _$_FeedStateLoading));

  @override
  _$_FeedStateLoading get _value => super._value as _$_FeedStateLoading;
}

/// @nodoc

class _$_FeedStateLoading extends _FeedStateLoading {
  const _$_FeedStateLoading() : super._();

  @override
  String toString() {
    return 'FeedState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FeedStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Post> posts) data,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Post> posts)? data,
    TResult Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Post> posts)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateError value) error,
    required TResult Function(_FeedStateData value) data,
    required TResult Function(_FeedStateEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateError value)? error,
    TResult Function(_FeedStateData value)? data,
    TResult Function(_FeedStateEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateError value)? error,
    TResult Function(_FeedStateData value)? data,
    TResult Function(_FeedStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FeedStateLoading extends FeedState {
  const factory _FeedStateLoading() = _$_FeedStateLoading;
  const _FeedStateLoading._() : super._();
}

/// @nodoc
abstract class _$$_FeedStateErrorCopyWith<$Res> {
  factory _$$_FeedStateErrorCopyWith(
          _$_FeedStateError value, $Res Function(_$_FeedStateError) then) =
      __$$_FeedStateErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_FeedStateErrorCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res>
    implements _$$_FeedStateErrorCopyWith<$Res> {
  __$$_FeedStateErrorCopyWithImpl(
      _$_FeedStateError _value, $Res Function(_$_FeedStateError) _then)
      : super(_value, (v) => _then(v as _$_FeedStateError));

  @override
  _$_FeedStateError get _value => super._value as _$_FeedStateError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_FeedStateError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FeedStateError extends _FeedStateError {
  const _$_FeedStateError(this.errorMessage) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'FeedState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedStateError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_FeedStateErrorCopyWith<_$_FeedStateError> get copyWith =>
      __$$_FeedStateErrorCopyWithImpl<_$_FeedStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Post> posts) data,
    required TResult Function() empty,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Post> posts)? data,
    TResult Function()? empty,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Post> posts)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateError value) error,
    required TResult Function(_FeedStateData value) data,
    required TResult Function(_FeedStateEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateError value)? error,
    TResult Function(_FeedStateData value)? data,
    TResult Function(_FeedStateEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateError value)? error,
    TResult Function(_FeedStateData value)? data,
    TResult Function(_FeedStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FeedStateError extends FeedState {
  const factory _FeedStateError(final String errorMessage) = _$_FeedStateError;
  const _FeedStateError._() : super._();

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FeedStateErrorCopyWith<_$_FeedStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FeedStateDataCopyWith<$Res> {
  factory _$$_FeedStateDataCopyWith(
          _$_FeedStateData value, $Res Function(_$_FeedStateData) then) =
      __$$_FeedStateDataCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

/// @nodoc
class __$$_FeedStateDataCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$$_FeedStateDataCopyWith<$Res> {
  __$$_FeedStateDataCopyWithImpl(
      _$_FeedStateData _value, $Res Function(_$_FeedStateData) _then)
      : super(_value, (v) => _then(v as _$_FeedStateData));

  @override
  _$_FeedStateData get _value => super._value as _$_FeedStateData;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$_FeedStateData(
      posts == freezed
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_FeedStateData extends _FeedStateData {
  const _$_FeedStateData(final List<Post> posts)
      : _posts = posts,
        super._();

  final List<Post> _posts;
  @override
  List<Post> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'FeedState.data(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedStateData &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  _$$_FeedStateDataCopyWith<_$_FeedStateData> get copyWith =>
      __$$_FeedStateDataCopyWithImpl<_$_FeedStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Post> posts) data,
    required TResult Function() empty,
  }) {
    return data(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Post> posts)? data,
    TResult Function()? empty,
  }) {
    return data?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Post> posts)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateError value) error,
    required TResult Function(_FeedStateData value) data,
    required TResult Function(_FeedStateEmpty value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateError value)? error,
    TResult Function(_FeedStateData value)? data,
    TResult Function(_FeedStateEmpty value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateError value)? error,
    TResult Function(_FeedStateData value)? data,
    TResult Function(_FeedStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _FeedStateData extends FeedState {
  const factory _FeedStateData(final List<Post> posts) = _$_FeedStateData;
  const _FeedStateData._() : super._();

  List<Post> get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FeedStateDataCopyWith<_$_FeedStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FeedStateEmptyCopyWith<$Res> {
  factory _$$_FeedStateEmptyCopyWith(
          _$_FeedStateEmpty value, $Res Function(_$_FeedStateEmpty) then) =
      __$$_FeedStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FeedStateEmptyCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res>
    implements _$$_FeedStateEmptyCopyWith<$Res> {
  __$$_FeedStateEmptyCopyWithImpl(
      _$_FeedStateEmpty _value, $Res Function(_$_FeedStateEmpty) _then)
      : super(_value, (v) => _then(v as _$_FeedStateEmpty));

  @override
  _$_FeedStateEmpty get _value => super._value as _$_FeedStateEmpty;
}

/// @nodoc

class _$_FeedStateEmpty extends _FeedStateEmpty {
  const _$_FeedStateEmpty() : super._();

  @override
  String toString() {
    return 'FeedState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FeedStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Post> posts) data,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Post> posts)? data,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Post> posts)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateError value) error,
    required TResult Function(_FeedStateData value) data,
    required TResult Function(_FeedStateEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateError value)? error,
    TResult Function(_FeedStateData value)? data,
    TResult Function(_FeedStateEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateError value)? error,
    TResult Function(_FeedStateData value)? data,
    TResult Function(_FeedStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _FeedStateEmpty extends FeedState {
  const factory _FeedStateEmpty() = _$_FeedStateEmpty;
  const _FeedStateEmpty._() : super._();
}
