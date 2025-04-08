// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KBook _$KBookFromJson(Map<String, dynamic> json) {
  return _KBook.fromJson(json);
}

/// @nodoc
mixin _$KBook {
  String? get kind => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;
  String? get selfLink => throw _privateConstructorUsedError;
  VolumeInfo? get volumeInfo => throw _privateConstructorUsedError;

  /// Serializes this KBook to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KBookCopyWith<KBook> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KBookCopyWith<$Res> {
  factory $KBookCopyWith(KBook value, $Res Function(KBook) then) =
      _$KBookCopyWithImpl<$Res, KBook>;
  @useResult
  $Res call(
      {String? kind,
      String? id,
      String? etag,
      String? selfLink,
      VolumeInfo? volumeInfo});

  $VolumeInfoCopyWith<$Res>? get volumeInfo;
}

/// @nodoc
class _$KBookCopyWithImpl<$Res, $Val extends KBook>
    implements $KBookCopyWith<$Res> {
  _$KBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? id = freezed,
    Object? etag = freezed,
    Object? selfLink = freezed,
    Object? volumeInfo = freezed,
  }) {
    return _then(_value.copyWith(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      selfLink: freezed == selfLink
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeInfo: freezed == volumeInfo
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo?,
    ) as $Val);
  }

  /// Create a copy of KBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VolumeInfoCopyWith<$Res>? get volumeInfo {
    if (_value.volumeInfo == null) {
      return null;
    }

    return $VolumeInfoCopyWith<$Res>(_value.volumeInfo!, (value) {
      return _then(_value.copyWith(volumeInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KBookImplCopyWith<$Res> implements $KBookCopyWith<$Res> {
  factory _$$KBookImplCopyWith(
          _$KBookImpl value, $Res Function(_$KBookImpl) then) =
      __$$KBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? kind,
      String? id,
      String? etag,
      String? selfLink,
      VolumeInfo? volumeInfo});

  @override
  $VolumeInfoCopyWith<$Res>? get volumeInfo;
}

/// @nodoc
class __$$KBookImplCopyWithImpl<$Res>
    extends _$KBookCopyWithImpl<$Res, _$KBookImpl>
    implements _$$KBookImplCopyWith<$Res> {
  __$$KBookImplCopyWithImpl(
      _$KBookImpl _value, $Res Function(_$KBookImpl) _then)
      : super(_value, _then);

  /// Create a copy of KBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? id = freezed,
    Object? etag = freezed,
    Object? selfLink = freezed,
    Object? volumeInfo = freezed,
  }) {
    return _then(_$KBookImpl(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      selfLink: freezed == selfLink
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeInfo: freezed == volumeInfo
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KBookImpl implements _KBook {
  const _$KBookImpl(
      {this.kind, this.id, this.etag, this.selfLink, this.volumeInfo});

  factory _$KBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$KBookImplFromJson(json);

  @override
  final String? kind;
  @override
  final String? id;
  @override
  final String? etag;
  @override
  final String? selfLink;
  @override
  final VolumeInfo? volumeInfo;

  @override
  String toString() {
    return 'KBook(kind: $kind, id: $id, etag: $etag, selfLink: $selfLink, volumeInfo: $volumeInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KBookImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.selfLink, selfLink) ||
                other.selfLink == selfLink) &&
            (identical(other.volumeInfo, volumeInfo) ||
                other.volumeInfo == volumeInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kind, id, etag, selfLink, volumeInfo);

  /// Create a copy of KBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KBookImplCopyWith<_$KBookImpl> get copyWith =>
      __$$KBookImplCopyWithImpl<_$KBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KBookImplToJson(
      this,
    );
  }
}

abstract class _KBook implements KBook {
  const factory _KBook(
      {final String? kind,
      final String? id,
      final String? etag,
      final String? selfLink,
      final VolumeInfo? volumeInfo}) = _$KBookImpl;

  factory _KBook.fromJson(Map<String, dynamic> json) = _$KBookImpl.fromJson;

  @override
  String? get kind;
  @override
  String? get id;
  @override
  String? get etag;
  @override
  String? get selfLink;
  @override
  VolumeInfo? get volumeInfo;

  /// Create a copy of KBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KBookImplCopyWith<_$KBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) {
  return _VolumeInfo.fromJson(json);
}

/// @nodoc
mixin _$VolumeInfo {
  String? get title => throw _privateConstructorUsedError;
  List<String>? get authors => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  String? get publishedDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get pageCount => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;
  List<IndustryIdentifiers>? get industryIdentifiers =>
      throw _privateConstructorUsedError;
  Map<String, String>? get imageLinks => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get previewLink => throw _privateConstructorUsedError;
  String? get infoLink => throw _privateConstructorUsedError;
  String? get canonicalVolumeLink => throw _privateConstructorUsedError;

  /// Serializes this VolumeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VolumeInfoCopyWith<VolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeInfoCopyWith<$Res> {
  factory $VolumeInfoCopyWith(
          VolumeInfo value, $Res Function(VolumeInfo) then) =
      _$VolumeInfoCopyWithImpl<$Res, VolumeInfo>;
  @useResult
  $Res call(
      {String? title,
      List<String>? authors,
      String? publisher,
      String? publishedDate,
      String? description,
      int? pageCount,
      List<String>? categories,
      List<IndustryIdentifiers>? industryIdentifiers,
      Map<String, String>? imageLinks,
      String? language,
      String? previewLink,
      String? infoLink,
      String? canonicalVolumeLink});
}

/// @nodoc
class _$VolumeInfoCopyWithImpl<$Res, $Val extends VolumeInfo>
    implements $VolumeInfoCopyWith<$Res> {
  _$VolumeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? publisher = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
    Object? categories = freezed,
    Object? industryIdentifiers = freezed,
    Object? imageLinks = freezed,
    Object? language = freezed,
    Object? previewLink = freezed,
    Object? infoLink = freezed,
    Object? canonicalVolumeLink = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      industryIdentifiers: freezed == industryIdentifiers
          ? _value.industryIdentifiers
          : industryIdentifiers // ignore: cast_nullable_to_non_nullable
              as List<IndustryIdentifiers>?,
      imageLinks: freezed == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      previewLink: freezed == previewLink
          ? _value.previewLink
          : previewLink // ignore: cast_nullable_to_non_nullable
              as String?,
      infoLink: freezed == infoLink
          ? _value.infoLink
          : infoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalVolumeLink: freezed == canonicalVolumeLink
          ? _value.canonicalVolumeLink
          : canonicalVolumeLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VolumeInfoImplCopyWith<$Res>
    implements $VolumeInfoCopyWith<$Res> {
  factory _$$VolumeInfoImplCopyWith(
          _$VolumeInfoImpl value, $Res Function(_$VolumeInfoImpl) then) =
      __$$VolumeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      List<String>? authors,
      String? publisher,
      String? publishedDate,
      String? description,
      int? pageCount,
      List<String>? categories,
      List<IndustryIdentifiers>? industryIdentifiers,
      Map<String, String>? imageLinks,
      String? language,
      String? previewLink,
      String? infoLink,
      String? canonicalVolumeLink});
}

/// @nodoc
class __$$VolumeInfoImplCopyWithImpl<$Res>
    extends _$VolumeInfoCopyWithImpl<$Res, _$VolumeInfoImpl>
    implements _$$VolumeInfoImplCopyWith<$Res> {
  __$$VolumeInfoImplCopyWithImpl(
      _$VolumeInfoImpl _value, $Res Function(_$VolumeInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? publisher = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
    Object? categories = freezed,
    Object? industryIdentifiers = freezed,
    Object? imageLinks = freezed,
    Object? language = freezed,
    Object? previewLink = freezed,
    Object? infoLink = freezed,
    Object? canonicalVolumeLink = freezed,
  }) {
    return _then(_$VolumeInfoImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      industryIdentifiers: freezed == industryIdentifiers
          ? _value._industryIdentifiers
          : industryIdentifiers // ignore: cast_nullable_to_non_nullable
              as List<IndustryIdentifiers>?,
      imageLinks: freezed == imageLinks
          ? _value._imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      previewLink: freezed == previewLink
          ? _value.previewLink
          : previewLink // ignore: cast_nullable_to_non_nullable
              as String?,
      infoLink: freezed == infoLink
          ? _value.infoLink
          : infoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalVolumeLink: freezed == canonicalVolumeLink
          ? _value.canonicalVolumeLink
          : canonicalVolumeLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VolumeInfoImpl implements _VolumeInfo {
  const _$VolumeInfoImpl(
      {this.title,
      final List<String>? authors,
      this.publisher,
      this.publishedDate,
      this.description,
      this.pageCount,
      final List<String>? categories,
      final List<IndustryIdentifiers>? industryIdentifiers,
      final Map<String, String>? imageLinks,
      this.language,
      this.previewLink,
      this.infoLink,
      this.canonicalVolumeLink})
      : _authors = authors,
        _categories = categories,
        _industryIdentifiers = industryIdentifiers,
        _imageLinks = imageLinks;

  factory _$VolumeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolumeInfoImplFromJson(json);

  @override
  final String? title;
  final List<String>? _authors;
  @override
  List<String>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? publisher;
  @override
  final String? publishedDate;
  @override
  final String? description;
  @override
  final int? pageCount;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<IndustryIdentifiers>? _industryIdentifiers;
  @override
  List<IndustryIdentifiers>? get industryIdentifiers {
    final value = _industryIdentifiers;
    if (value == null) return null;
    if (_industryIdentifiers is EqualUnmodifiableListView)
      return _industryIdentifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, String>? _imageLinks;
  @override
  Map<String, String>? get imageLinks {
    final value = _imageLinks;
    if (value == null) return null;
    if (_imageLinks is EqualUnmodifiableMapView) return _imageLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? language;
  @override
  final String? previewLink;
  @override
  final String? infoLink;
  @override
  final String? canonicalVolumeLink;

  @override
  String toString() {
    return 'VolumeInfo(title: $title, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description, pageCount: $pageCount, categories: $categories, industryIdentifiers: $industryIdentifiers, imageLinks: $imageLinks, language: $language, previewLink: $previewLink, infoLink: $infoLink, canonicalVolumeLink: $canonicalVolumeLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolumeInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._industryIdentifiers, _industryIdentifiers) &&
            const DeepCollectionEquality()
                .equals(other._imageLinks, _imageLinks) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.previewLink, previewLink) ||
                other.previewLink == previewLink) &&
            (identical(other.infoLink, infoLink) ||
                other.infoLink == infoLink) &&
            (identical(other.canonicalVolumeLink, canonicalVolumeLink) ||
                other.canonicalVolumeLink == canonicalVolumeLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_authors),
      publisher,
      publishedDate,
      description,
      pageCount,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_industryIdentifiers),
      const DeepCollectionEquality().hash(_imageLinks),
      language,
      previewLink,
      infoLink,
      canonicalVolumeLink);

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VolumeInfoImplCopyWith<_$VolumeInfoImpl> get copyWith =>
      __$$VolumeInfoImplCopyWithImpl<_$VolumeInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolumeInfoImplToJson(
      this,
    );
  }
}

abstract class _VolumeInfo implements VolumeInfo {
  const factory _VolumeInfo(
      {final String? title,
      final List<String>? authors,
      final String? publisher,
      final String? publishedDate,
      final String? description,
      final int? pageCount,
      final List<String>? categories,
      final List<IndustryIdentifiers>? industryIdentifiers,
      final Map<String, String>? imageLinks,
      final String? language,
      final String? previewLink,
      final String? infoLink,
      final String? canonicalVolumeLink}) = _$VolumeInfoImpl;

  factory _VolumeInfo.fromJson(Map<String, dynamic> json) =
      _$VolumeInfoImpl.fromJson;

  @override
  String? get title;
  @override
  List<String>? get authors;
  @override
  String? get publisher;
  @override
  String? get publishedDate;
  @override
  String? get description;
  @override
  int? get pageCount;
  @override
  List<String>? get categories;
  @override
  List<IndustryIdentifiers>? get industryIdentifiers;
  @override
  Map<String, String>? get imageLinks;
  @override
  String? get language;
  @override
  String? get previewLink;
  @override
  String? get infoLink;
  @override
  String? get canonicalVolumeLink;

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VolumeInfoImplCopyWith<_$VolumeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndustryIdentifiers _$IndustryIdentifiersFromJson(Map<String, dynamic> json) {
  return _IndustryIdentifiers.fromJson(json);
}

/// @nodoc
mixin _$IndustryIdentifiers {
  String? get type => throw _privateConstructorUsedError;
  String? get identifier => throw _privateConstructorUsedError;

  /// Serializes this IndustryIdentifiers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IndustryIdentifiers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndustryIdentifiersCopyWith<IndustryIdentifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryIdentifiersCopyWith<$Res> {
  factory $IndustryIdentifiersCopyWith(
          IndustryIdentifiers value, $Res Function(IndustryIdentifiers) then) =
      _$IndustryIdentifiersCopyWithImpl<$Res, IndustryIdentifiers>;
  @useResult
  $Res call({String? type, String? identifier});
}

/// @nodoc
class _$IndustryIdentifiersCopyWithImpl<$Res, $Val extends IndustryIdentifiers>
    implements $IndustryIdentifiersCopyWith<$Res> {
  _$IndustryIdentifiersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IndustryIdentifiers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndustryIdentifiersImplCopyWith<$Res>
    implements $IndustryIdentifiersCopyWith<$Res> {
  factory _$$IndustryIdentifiersImplCopyWith(_$IndustryIdentifiersImpl value,
          $Res Function(_$IndustryIdentifiersImpl) then) =
      __$$IndustryIdentifiersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? identifier});
}

/// @nodoc
class __$$IndustryIdentifiersImplCopyWithImpl<$Res>
    extends _$IndustryIdentifiersCopyWithImpl<$Res, _$IndustryIdentifiersImpl>
    implements _$$IndustryIdentifiersImplCopyWith<$Res> {
  __$$IndustryIdentifiersImplCopyWithImpl(_$IndustryIdentifiersImpl _value,
      $Res Function(_$IndustryIdentifiersImpl) _then)
      : super(_value, _then);

  /// Create a copy of IndustryIdentifiers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$IndustryIdentifiersImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndustryIdentifiersImpl implements _IndustryIdentifiers {
  const _$IndustryIdentifiersImpl({this.type, this.identifier});

  factory _$IndustryIdentifiersImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndustryIdentifiersImplFromJson(json);

  @override
  final String? type;
  @override
  final String? identifier;

  @override
  String toString() {
    return 'IndustryIdentifiers(type: $type, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndustryIdentifiersImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, identifier);

  /// Create a copy of IndustryIdentifiers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndustryIdentifiersImplCopyWith<_$IndustryIdentifiersImpl> get copyWith =>
      __$$IndustryIdentifiersImplCopyWithImpl<_$IndustryIdentifiersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndustryIdentifiersImplToJson(
      this,
    );
  }
}

abstract class _IndustryIdentifiers implements IndustryIdentifiers {
  const factory _IndustryIdentifiers(
      {final String? type,
      final String? identifier}) = _$IndustryIdentifiersImpl;

  factory _IndustryIdentifiers.fromJson(Map<String, dynamic> json) =
      _$IndustryIdentifiersImpl.fromJson;

  @override
  String? get type;
  @override
  String? get identifier;

  /// Create a copy of IndustryIdentifiers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndustryIdentifiersImplCopyWith<_$IndustryIdentifiersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) {
  return _ImageLinks.fromJson(json);
}

/// @nodoc
mixin _$ImageLinks {
  String? get smallThumbnail => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;
  String? get extraLarge => throw _privateConstructorUsedError;

  /// Serializes this ImageLinks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageLinksCopyWith<ImageLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLinksCopyWith<$Res> {
  factory $ImageLinksCopyWith(
          ImageLinks value, $Res Function(ImageLinks) then) =
      _$ImageLinksCopyWithImpl<$Res, ImageLinks>;
  @useResult
  $Res call(
      {String? smallThumbnail,
      String? thumbnail,
      String? small,
      String? medium,
      String? large,
      String? extraLarge});
}

/// @nodoc
class _$ImageLinksCopyWithImpl<$Res, $Val extends ImageLinks>
    implements $ImageLinksCopyWith<$Res> {
  _$ImageLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
    Object? extraLarge = freezed,
  }) {
    return _then(_value.copyWith(
      smallThumbnail: freezed == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      extraLarge: freezed == extraLarge
          ? _value.extraLarge
          : extraLarge // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageLinksImplCopyWith<$Res>
    implements $ImageLinksCopyWith<$Res> {
  factory _$$ImageLinksImplCopyWith(
          _$ImageLinksImpl value, $Res Function(_$ImageLinksImpl) then) =
      __$$ImageLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? smallThumbnail,
      String? thumbnail,
      String? small,
      String? medium,
      String? large,
      String? extraLarge});
}

/// @nodoc
class __$$ImageLinksImplCopyWithImpl<$Res>
    extends _$ImageLinksCopyWithImpl<$Res, _$ImageLinksImpl>
    implements _$$ImageLinksImplCopyWith<$Res> {
  __$$ImageLinksImplCopyWithImpl(
      _$ImageLinksImpl _value, $Res Function(_$ImageLinksImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
    Object? extraLarge = freezed,
  }) {
    return _then(_$ImageLinksImpl(
      smallThumbnail: freezed == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      extraLarge: freezed == extraLarge
          ? _value.extraLarge
          : extraLarge // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageLinksImpl implements _ImageLinks {
  const _$ImageLinksImpl(
      {this.smallThumbnail,
      this.thumbnail,
      this.small,
      this.medium,
      this.large,
      this.extraLarge});

  factory _$ImageLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageLinksImplFromJson(json);

  @override
  final String? smallThumbnail;
  @override
  final String? thumbnail;
  @override
  final String? small;
  @override
  final String? medium;
  @override
  final String? large;
  @override
  final String? extraLarge;

  @override
  String toString() {
    return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail, small: $small, medium: $medium, large: $large, extraLarge: $extraLarge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLinksImpl &&
            (identical(other.smallThumbnail, smallThumbnail) ||
                other.smallThumbnail == smallThumbnail) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.extraLarge, extraLarge) ||
                other.extraLarge == extraLarge));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, smallThumbnail, thumbnail, small, medium, large, extraLarge);

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLinksImplCopyWith<_$ImageLinksImpl> get copyWith =>
      __$$ImageLinksImplCopyWithImpl<_$ImageLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageLinksImplToJson(
      this,
    );
  }
}

abstract class _ImageLinks implements ImageLinks {
  const factory _ImageLinks(
      {final String? smallThumbnail,
      final String? thumbnail,
      final String? small,
      final String? medium,
      final String? large,
      final String? extraLarge}) = _$ImageLinksImpl;

  factory _ImageLinks.fromJson(Map<String, dynamic> json) =
      _$ImageLinksImpl.fromJson;

  @override
  String? get smallThumbnail;
  @override
  String? get thumbnail;
  @override
  String? get small;
  @override
  String? get medium;
  @override
  String? get large;
  @override
  String? get extraLarge;

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageLinksImplCopyWith<_$ImageLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
