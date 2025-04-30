// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KBook book) addBookToFavorite,
    required TResult Function(String bookId) removeBookFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KBook book)? addBookToFavorite,
    TResult? Function(String bookId)? removeBookFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KBook book)? addBookToFavorite,
    TResult Function(String bookId)? removeBookFromFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBookToFavorite value) addBookToFavorite,
    required TResult Function(RemoveBookFromFavorite value)
        removeBookFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBookToFavorite value)? addBookToFavorite,
    TResult? Function(RemoveBookFromFavorite value)? removeBookFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBookToFavorite value)? addBookToFavorite,
    TResult Function(RemoveBookFromFavorite value)? removeBookFromFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddBookToFavoriteImplCopyWith<$Res> {
  factory _$$AddBookToFavoriteImplCopyWith(_$AddBookToFavoriteImpl value,
          $Res Function(_$AddBookToFavoriteImpl) then) =
      __$$AddBookToFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KBook book});

  $KBookCopyWith<$Res> get book;
}

/// @nodoc
class __$$AddBookToFavoriteImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$AddBookToFavoriteImpl>
    implements _$$AddBookToFavoriteImplCopyWith<$Res> {
  __$$AddBookToFavoriteImplCopyWithImpl(_$AddBookToFavoriteImpl _value,
      $Res Function(_$AddBookToFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$AddBookToFavoriteImpl(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as KBook,
    ));
  }

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KBookCopyWith<$Res> get book {
    return $KBookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value));
    });
  }
}

/// @nodoc

class _$AddBookToFavoriteImpl implements AddBookToFavorite {
  const _$AddBookToFavoriteImpl({required this.book});

  @override
  final KBook book;

  @override
  String toString() {
    return 'FavoriteEvent.addBookToFavorite(book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBookToFavoriteImpl &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBookToFavoriteImplCopyWith<_$AddBookToFavoriteImpl> get copyWith =>
      __$$AddBookToFavoriteImplCopyWithImpl<_$AddBookToFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KBook book) addBookToFavorite,
    required TResult Function(String bookId) removeBookFromFavorite,
  }) {
    return addBookToFavorite(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KBook book)? addBookToFavorite,
    TResult? Function(String bookId)? removeBookFromFavorite,
  }) {
    return addBookToFavorite?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KBook book)? addBookToFavorite,
    TResult Function(String bookId)? removeBookFromFavorite,
    required TResult orElse(),
  }) {
    if (addBookToFavorite != null) {
      return addBookToFavorite(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBookToFavorite value) addBookToFavorite,
    required TResult Function(RemoveBookFromFavorite value)
        removeBookFromFavorite,
  }) {
    return addBookToFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBookToFavorite value)? addBookToFavorite,
    TResult? Function(RemoveBookFromFavorite value)? removeBookFromFavorite,
  }) {
    return addBookToFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBookToFavorite value)? addBookToFavorite,
    TResult Function(RemoveBookFromFavorite value)? removeBookFromFavorite,
    required TResult orElse(),
  }) {
    if (addBookToFavorite != null) {
      return addBookToFavorite(this);
    }
    return orElse();
  }
}

abstract class AddBookToFavorite implements FavoriteEvent {
  const factory AddBookToFavorite({required final KBook book}) =
      _$AddBookToFavoriteImpl;

  KBook get book;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddBookToFavoriteImplCopyWith<_$AddBookToFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveBookFromFavoriteImplCopyWith<$Res> {
  factory _$$RemoveBookFromFavoriteImplCopyWith(
          _$RemoveBookFromFavoriteImpl value,
          $Res Function(_$RemoveBookFromFavoriteImpl) then) =
      __$$RemoveBookFromFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$RemoveBookFromFavoriteImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$RemoveBookFromFavoriteImpl>
    implements _$$RemoveBookFromFavoriteImplCopyWith<$Res> {
  __$$RemoveBookFromFavoriteImplCopyWithImpl(
      _$RemoveBookFromFavoriteImpl _value,
      $Res Function(_$RemoveBookFromFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$RemoveBookFromFavoriteImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveBookFromFavoriteImpl implements RemoveBookFromFavorite {
  const _$RemoveBookFromFavoriteImpl({required this.bookId});

  @override
  final String bookId;

  @override
  String toString() {
    return 'FavoriteEvent.removeBookFromFavorite(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveBookFromFavoriteImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveBookFromFavoriteImplCopyWith<_$RemoveBookFromFavoriteImpl>
      get copyWith => __$$RemoveBookFromFavoriteImplCopyWithImpl<
          _$RemoveBookFromFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KBook book) addBookToFavorite,
    required TResult Function(String bookId) removeBookFromFavorite,
  }) {
    return removeBookFromFavorite(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(KBook book)? addBookToFavorite,
    TResult? Function(String bookId)? removeBookFromFavorite,
  }) {
    return removeBookFromFavorite?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KBook book)? addBookToFavorite,
    TResult Function(String bookId)? removeBookFromFavorite,
    required TResult orElse(),
  }) {
    if (removeBookFromFavorite != null) {
      return removeBookFromFavorite(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBookToFavorite value) addBookToFavorite,
    required TResult Function(RemoveBookFromFavorite value)
        removeBookFromFavorite,
  }) {
    return removeBookFromFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBookToFavorite value)? addBookToFavorite,
    TResult? Function(RemoveBookFromFavorite value)? removeBookFromFavorite,
  }) {
    return removeBookFromFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBookToFavorite value)? addBookToFavorite,
    TResult Function(RemoveBookFromFavorite value)? removeBookFromFavorite,
    required TResult orElse(),
  }) {
    if (removeBookFromFavorite != null) {
      return removeBookFromFavorite(this);
    }
    return orElse();
  }
}

abstract class RemoveBookFromFavorite implements FavoriteEvent {
  const factory RemoveBookFromFavorite({required final String bookId}) =
      _$RemoveBookFromFavoriteImpl;

  String get bookId;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveBookFromFavoriteImplCopyWith<_$RemoveBookFromFavoriteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteState {
  FavoriteStatus get status => throw _privateConstructorUsedError;
  List<KBook> get books => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call({FavoriteStatus status, List<KBook> books});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? books = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoriteStatus,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<KBook>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteStateImplCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$FavoriteStateImplCopyWith(
          _$FavoriteStateImpl value, $Res Function(_$FavoriteStateImpl) then) =
      __$$FavoriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FavoriteStatus status, List<KBook> books});
}

/// @nodoc
class __$$FavoriteStateImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateImpl>
    implements _$$FavoriteStateImplCopyWith<$Res> {
  __$$FavoriteStateImplCopyWithImpl(
      _$FavoriteStateImpl _value, $Res Function(_$FavoriteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? books = null,
  }) {
    return _then(_$FavoriteStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoriteStatus,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<KBook>,
    ));
  }
}

/// @nodoc

class _$FavoriteStateImpl implements _FavoriteState {
  const _$FavoriteStateImpl(
      {this.status = FavoriteStatus.initial,
      final List<KBook> books = const []})
      : _books = books;

  @override
  @JsonKey()
  final FavoriteStatus status;
  final List<KBook> _books;
  @override
  @JsonKey()
  List<KBook> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'FavoriteState(status: $status, books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_books));

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      __$$FavoriteStateImplCopyWithImpl<_$FavoriteStateImpl>(this, _$identity);
}

abstract class _FavoriteState implements FavoriteState {
  const factory _FavoriteState(
      {final FavoriteStatus status,
      final List<KBook> books}) = _$FavoriteStateImpl;

  @override
  FavoriteStatus get status;
  @override
  List<KBook> get books;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
