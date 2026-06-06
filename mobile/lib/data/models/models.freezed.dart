// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call({String id, String phone, String nickname});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String phone, String nickname});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? nickname = null,
  }) {
    return _then(_$UserProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.id, required this.phone, required this.nickname});

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String phone;
  @override
  final String nickname;

  @override
  String toString() {
    return 'UserProfile(id: $id, phone: $phone, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, phone, nickname);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {required final String id,
      required final String phone,
      required final String nickname}) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  String get id;
  @override
  String get phone;
  @override
  String get nickname;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'trialVideoUrl')
  String get trialVideoUrl => throw _privateConstructorUsedError;
  List<CourseOutlineChapter> get outline => throw _privateConstructorUsedError;
  String get instructor => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotScore')
  int get hotScore => throw _privateConstructorUsedError;

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {String id,
      String title,
      String category,
      String difficulty,
      String description,
      double price,
      @JsonKey(name: 'trialVideoUrl') String trialVideoUrl,
      List<CourseOutlineChapter> outline,
      String instructor,
      @JsonKey(name: 'hotScore') int hotScore});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? difficulty = null,
    Object? description = null,
    Object? price = null,
    Object? trialVideoUrl = null,
    Object? outline = null,
    Object? instructor = null,
    Object? hotScore = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      trialVideoUrl: null == trialVideoUrl
          ? _value.trialVideoUrl
          : trialVideoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      outline: null == outline
          ? _value.outline
          : outline // ignore: cast_nullable_to_non_nullable
              as List<CourseOutlineChapter>,
      instructor: null == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as String,
      hotScore: null == hotScore
          ? _value.hotScore
          : hotScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String category,
      String difficulty,
      String description,
      double price,
      @JsonKey(name: 'trialVideoUrl') String trialVideoUrl,
      List<CourseOutlineChapter> outline,
      String instructor,
      @JsonKey(name: 'hotScore') int hotScore});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? difficulty = null,
    Object? description = null,
    Object? price = null,
    Object? trialVideoUrl = null,
    Object? outline = null,
    Object? instructor = null,
    Object? hotScore = null,
  }) {
    return _then(_$CourseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      trialVideoUrl: null == trialVideoUrl
          ? _value.trialVideoUrl
          : trialVideoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      outline: null == outline
          ? _value._outline
          : outline // ignore: cast_nullable_to_non_nullable
              as List<CourseOutlineChapter>,
      instructor: null == instructor
          ? _value.instructor
          : instructor // ignore: cast_nullable_to_non_nullable
              as String,
      hotScore: null == hotScore
          ? _value.hotScore
          : hotScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {required this.id,
      required this.title,
      required this.category,
      required this.difficulty,
      required this.description,
      required this.price,
      @JsonKey(name: 'trialVideoUrl') this.trialVideoUrl = '',
      final List<CourseOutlineChapter> outline = const [],
      required this.instructor,
      @JsonKey(name: 'hotScore') this.hotScore = 0})
      : _outline = outline;

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String category;
  @override
  final String difficulty;
  @override
  final String description;
  @override
  final double price;
  @override
  @JsonKey(name: 'trialVideoUrl')
  final String trialVideoUrl;
  final List<CourseOutlineChapter> _outline;
  @override
  @JsonKey()
  List<CourseOutlineChapter> get outline {
    if (_outline is EqualUnmodifiableListView) return _outline;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outline);
  }

  @override
  final String instructor;
  @override
  @JsonKey(name: 'hotScore')
  final int hotScore;

  @override
  String toString() {
    return 'Course(id: $id, title: $title, category: $category, difficulty: $difficulty, description: $description, price: $price, trialVideoUrl: $trialVideoUrl, outline: $outline, instructor: $instructor, hotScore: $hotScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.trialVideoUrl, trialVideoUrl) ||
                other.trialVideoUrl == trialVideoUrl) &&
            const DeepCollectionEquality().equals(other._outline, _outline) &&
            (identical(other.instructor, instructor) ||
                other.instructor == instructor) &&
            (identical(other.hotScore, hotScore) ||
                other.hotScore == hotScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      category,
      difficulty,
      description,
      price,
      trialVideoUrl,
      const DeepCollectionEquality().hash(_outline),
      instructor,
      hotScore);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {required final String id,
      required final String title,
      required final String category,
      required final String difficulty,
      required final String description,
      required final double price,
      @JsonKey(name: 'trialVideoUrl') final String trialVideoUrl,
      final List<CourseOutlineChapter> outline,
      required final String instructor,
      @JsonKey(name: 'hotScore') final int hotScore}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get category;
  @override
  String get difficulty;
  @override
  String get description;
  @override
  double get price;
  @override
  @JsonKey(name: 'trialVideoUrl')
  String get trialVideoUrl;
  @override
  List<CourseOutlineChapter> get outline;
  @override
  String get instructor;
  @override
  @JsonKey(name: 'hotScore')
  int get hotScore;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseOutlineChapter _$CourseOutlineChapterFromJson(Map<String, dynamic> json) {
  return _CourseOutlineChapter.fromJson(json);
}

/// @nodoc
mixin _$CourseOutlineChapter {
  String get chapter => throw _privateConstructorUsedError;
  List<String> get items => throw _privateConstructorUsedError;

  /// Serializes this CourseOutlineChapter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseOutlineChapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseOutlineChapterCopyWith<CourseOutlineChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseOutlineChapterCopyWith<$Res> {
  factory $CourseOutlineChapterCopyWith(CourseOutlineChapter value,
          $Res Function(CourseOutlineChapter) then) =
      _$CourseOutlineChapterCopyWithImpl<$Res, CourseOutlineChapter>;
  @useResult
  $Res call({String chapter, List<String> items});
}

/// @nodoc
class _$CourseOutlineChapterCopyWithImpl<$Res,
        $Val extends CourseOutlineChapter>
    implements $CourseOutlineChapterCopyWith<$Res> {
  _$CourseOutlineChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseOutlineChapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseOutlineChapterImplCopyWith<$Res>
    implements $CourseOutlineChapterCopyWith<$Res> {
  factory _$$CourseOutlineChapterImplCopyWith(_$CourseOutlineChapterImpl value,
          $Res Function(_$CourseOutlineChapterImpl) then) =
      __$$CourseOutlineChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chapter, List<String> items});
}

/// @nodoc
class __$$CourseOutlineChapterImplCopyWithImpl<$Res>
    extends _$CourseOutlineChapterCopyWithImpl<$Res, _$CourseOutlineChapterImpl>
    implements _$$CourseOutlineChapterImplCopyWith<$Res> {
  __$$CourseOutlineChapterImplCopyWithImpl(_$CourseOutlineChapterImpl _value,
      $Res Function(_$CourseOutlineChapterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseOutlineChapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? items = null,
  }) {
    return _then(_$CourseOutlineChapterImpl(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseOutlineChapterImpl implements _CourseOutlineChapter {
  const _$CourseOutlineChapterImpl(
      {required this.chapter, final List<String> items = const []})
      : _items = items;

  factory _$CourseOutlineChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseOutlineChapterImplFromJson(json);

  @override
  final String chapter;
  final List<String> _items;
  @override
  @JsonKey()
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CourseOutlineChapter(chapter: $chapter, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseOutlineChapterImpl &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, chapter, const DeepCollectionEquality().hash(_items));

  /// Create a copy of CourseOutlineChapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseOutlineChapterImplCopyWith<_$CourseOutlineChapterImpl>
      get copyWith =>
          __$$CourseOutlineChapterImplCopyWithImpl<_$CourseOutlineChapterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseOutlineChapterImplToJson(
      this,
    );
  }
}

abstract class _CourseOutlineChapter implements CourseOutlineChapter {
  const factory _CourseOutlineChapter(
      {required final String chapter,
      final List<String> items}) = _$CourseOutlineChapterImpl;

  factory _CourseOutlineChapter.fromJson(Map<String, dynamic> json) =
      _$CourseOutlineChapterImpl.fromJson;

  @override
  String get chapter;
  @override
  List<String> get items;

  /// Create a copy of CourseOutlineChapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseOutlineChapterImplCopyWith<_$CourseOutlineChapterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Batch _$BatchFromJson(Map<String, dynamic> json) {
  return _Batch.fromJson(json);
}

/// @nodoc
mixin _$Batch {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseId')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseTitle')
  String? get courseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  String get endDate => throw _privateConstructorUsedError;
  String get schedule => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'enrolledCount')
  int get enrolledCount => throw _privateConstructorUsedError;
  int get remaining => throw _privateConstructorUsedError;

  /// Serializes this Batch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchCopyWith<Batch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchCopyWith<$Res> {
  factory $BatchCopyWith(Batch value, $Res Function(Batch) then) =
      _$BatchCopyWithImpl<$Res, Batch>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'courseId') String courseId,
      @JsonKey(name: 'courseTitle') String? courseTitle,
      @JsonKey(name: 'startDate') String startDate,
      @JsonKey(name: 'endDate') String endDate,
      String schedule,
      int capacity,
      @JsonKey(name: 'enrolledCount') int enrolledCount,
      int remaining});
}

/// @nodoc
class _$BatchCopyWithImpl<$Res, $Val extends Batch>
    implements $BatchCopyWith<$Res> {
  _$BatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? courseTitle = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? schedule = null,
    Object? capacity = null,
    Object? enrolledCount = null,
    Object? remaining = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      enrolledCount: null == enrolledCount
          ? _value.enrolledCount
          : enrolledCount // ignore: cast_nullable_to_non_nullable
              as int,
      remaining: null == remaining
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BatchImplCopyWith<$Res> implements $BatchCopyWith<$Res> {
  factory _$$BatchImplCopyWith(
          _$BatchImpl value, $Res Function(_$BatchImpl) then) =
      __$$BatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'courseId') String courseId,
      @JsonKey(name: 'courseTitle') String? courseTitle,
      @JsonKey(name: 'startDate') String startDate,
      @JsonKey(name: 'endDate') String endDate,
      String schedule,
      int capacity,
      @JsonKey(name: 'enrolledCount') int enrolledCount,
      int remaining});
}

/// @nodoc
class __$$BatchImplCopyWithImpl<$Res>
    extends _$BatchCopyWithImpl<$Res, _$BatchImpl>
    implements _$$BatchImplCopyWith<$Res> {
  __$$BatchImplCopyWithImpl(
      _$BatchImpl _value, $Res Function(_$BatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? courseTitle = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? schedule = null,
    Object? capacity = null,
    Object? enrolledCount = null,
    Object? remaining = null,
  }) {
    return _then(_$BatchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      enrolledCount: null == enrolledCount
          ? _value.enrolledCount
          : enrolledCount // ignore: cast_nullable_to_non_nullable
              as int,
      remaining: null == remaining
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchImpl implements _Batch {
  const _$BatchImpl(
      {required this.id,
      @JsonKey(name: 'courseId') required this.courseId,
      @JsonKey(name: 'courseTitle') this.courseTitle,
      @JsonKey(name: 'startDate') required this.startDate,
      @JsonKey(name: 'endDate') required this.endDate,
      required this.schedule,
      required this.capacity,
      @JsonKey(name: 'enrolledCount') required this.enrolledCount,
      required this.remaining});

  factory _$BatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'courseId')
  final String courseId;
  @override
  @JsonKey(name: 'courseTitle')
  final String? courseTitle;
  @override
  @JsonKey(name: 'startDate')
  final String startDate;
  @override
  @JsonKey(name: 'endDate')
  final String endDate;
  @override
  final String schedule;
  @override
  final int capacity;
  @override
  @JsonKey(name: 'enrolledCount')
  final int enrolledCount;
  @override
  final int remaining;

  @override
  String toString() {
    return 'Batch(id: $id, courseId: $courseId, courseTitle: $courseTitle, startDate: $startDate, endDate: $endDate, schedule: $schedule, capacity: $capacity, enrolledCount: $enrolledCount, remaining: $remaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.enrolledCount, enrolledCount) ||
                other.enrolledCount == enrolledCount) &&
            (identical(other.remaining, remaining) ||
                other.remaining == remaining));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, courseTitle,
      startDate, endDate, schedule, capacity, enrolledCount, remaining);

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchImplCopyWith<_$BatchImpl> get copyWith =>
      __$$BatchImplCopyWithImpl<_$BatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchImplToJson(
      this,
    );
  }
}

abstract class _Batch implements Batch {
  const factory _Batch(
      {required final String id,
      @JsonKey(name: 'courseId') required final String courseId,
      @JsonKey(name: 'courseTitle') final String? courseTitle,
      @JsonKey(name: 'startDate') required final String startDate,
      @JsonKey(name: 'endDate') required final String endDate,
      required final String schedule,
      required final int capacity,
      @JsonKey(name: 'enrolledCount') required final int enrolledCount,
      required final int remaining}) = _$BatchImpl;

  factory _Batch.fromJson(Map<String, dynamic> json) = _$BatchImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'courseId')
  String get courseId;
  @override
  @JsonKey(name: 'courseTitle')
  String? get courseTitle;
  @override
  @JsonKey(name: 'startDate')
  String get startDate;
  @override
  @JsonKey(name: 'endDate')
  String get endDate;
  @override
  String get schedule;
  @override
  int get capacity;
  @override
  @JsonKey(name: 'enrolledCount')
  int get enrolledCount;
  @override
  int get remaining;

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchImplCopyWith<_$BatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Enrollment _$EnrollmentFromJson(Map<String, dynamic> json) {
  return _Enrollment.fromJson(json);
}

/// @nodoc
mixin _$Enrollment {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseId')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseTitle')
  String get courseTitle => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'batchId')
  String get batchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  String get endDate => throw _privateConstructorUsedError;
  String get schedule => throw _privateConstructorUsedError;
  @JsonKey(name: 'installmentPlan')
  String get installmentPlan => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Enrollment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Enrollment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnrollmentCopyWith<Enrollment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrollmentCopyWith<$Res> {
  factory $EnrollmentCopyWith(
          Enrollment value, $Res Function(Enrollment) then) =
      _$EnrollmentCopyWithImpl<$Res, Enrollment>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'courseId') String courseId,
      @JsonKey(name: 'courseTitle') String courseTitle,
      String category,
      @JsonKey(name: 'batchId') String batchId,
      @JsonKey(name: 'startDate') String startDate,
      @JsonKey(name: 'endDate') String endDate,
      String schedule,
      @JsonKey(name: 'installmentPlan') String installmentPlan,
      String status,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class _$EnrollmentCopyWithImpl<$Res, $Val extends Enrollment>
    implements $EnrollmentCopyWith<$Res> {
  _$EnrollmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Enrollment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? category = null,
    Object? batchId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? schedule = null,
    Object? installmentPlan = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: null == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      installmentPlan: null == installmentPlan
          ? _value.installmentPlan
          : installmentPlan // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnrollmentImplCopyWith<$Res>
    implements $EnrollmentCopyWith<$Res> {
  factory _$$EnrollmentImplCopyWith(
          _$EnrollmentImpl value, $Res Function(_$EnrollmentImpl) then) =
      __$$EnrollmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'courseId') String courseId,
      @JsonKey(name: 'courseTitle') String courseTitle,
      String category,
      @JsonKey(name: 'batchId') String batchId,
      @JsonKey(name: 'startDate') String startDate,
      @JsonKey(name: 'endDate') String endDate,
      String schedule,
      @JsonKey(name: 'installmentPlan') String installmentPlan,
      String status,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class __$$EnrollmentImplCopyWithImpl<$Res>
    extends _$EnrollmentCopyWithImpl<$Res, _$EnrollmentImpl>
    implements _$$EnrollmentImplCopyWith<$Res> {
  __$$EnrollmentImplCopyWithImpl(
      _$EnrollmentImpl _value, $Res Function(_$EnrollmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Enrollment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? category = null,
    Object? batchId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? schedule = null,
    Object? installmentPlan = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_$EnrollmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      batchId: null == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      installmentPlan: null == installmentPlan
          ? _value.installmentPlan
          : installmentPlan // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnrollmentImpl implements _Enrollment {
  const _$EnrollmentImpl(
      {required this.id,
      @JsonKey(name: 'courseId') required this.courseId,
      @JsonKey(name: 'courseTitle') required this.courseTitle,
      required this.category,
      @JsonKey(name: 'batchId') required this.batchId,
      @JsonKey(name: 'startDate') required this.startDate,
      @JsonKey(name: 'endDate') required this.endDate,
      required this.schedule,
      @JsonKey(name: 'installmentPlan') required this.installmentPlan,
      required this.status,
      @JsonKey(name: 'createdAt') required this.createdAt});

  factory _$EnrollmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnrollmentImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'courseId')
  final String courseId;
  @override
  @JsonKey(name: 'courseTitle')
  final String courseTitle;
  @override
  final String category;
  @override
  @JsonKey(name: 'batchId')
  final String batchId;
  @override
  @JsonKey(name: 'startDate')
  final String startDate;
  @override
  @JsonKey(name: 'endDate')
  final String endDate;
  @override
  final String schedule;
  @override
  @JsonKey(name: 'installmentPlan')
  final String installmentPlan;
  @override
  final String status;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;

  @override
  String toString() {
    return 'Enrollment(id: $id, courseId: $courseId, courseTitle: $courseTitle, category: $category, batchId: $batchId, startDate: $startDate, endDate: $endDate, schedule: $schedule, installmentPlan: $installmentPlan, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.installmentPlan, installmentPlan) ||
                other.installmentPlan == installmentPlan) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      courseId,
      courseTitle,
      category,
      batchId,
      startDate,
      endDate,
      schedule,
      installmentPlan,
      status,
      createdAt);

  /// Create a copy of Enrollment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrollmentImplCopyWith<_$EnrollmentImpl> get copyWith =>
      __$$EnrollmentImplCopyWithImpl<_$EnrollmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnrollmentImplToJson(
      this,
    );
  }
}

abstract class _Enrollment implements Enrollment {
  const factory _Enrollment(
      {required final String id,
      @JsonKey(name: 'courseId') required final String courseId,
      @JsonKey(name: 'courseTitle') required final String courseTitle,
      required final String category,
      @JsonKey(name: 'batchId') required final String batchId,
      @JsonKey(name: 'startDate') required final String startDate,
      @JsonKey(name: 'endDate') required final String endDate,
      required final String schedule,
      @JsonKey(name: 'installmentPlan') required final String installmentPlan,
      required final String status,
      @JsonKey(name: 'createdAt')
      required final String createdAt}) = _$EnrollmentImpl;

  factory _Enrollment.fromJson(Map<String, dynamic> json) =
      _$EnrollmentImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'courseId')
  String get courseId;
  @override
  @JsonKey(name: 'courseTitle')
  String get courseTitle;
  @override
  String get category;
  @override
  @JsonKey(name: 'batchId')
  String get batchId;
  @override
  @JsonKey(name: 'startDate')
  String get startDate;
  @override
  @JsonKey(name: 'endDate')
  String get endDate;
  @override
  String get schedule;
  @override
  @JsonKey(name: 'installmentPlan')
  String get installmentPlan;
  @override
  String get status;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;

  /// Create a copy of Enrollment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnrollmentImplCopyWith<_$EnrollmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseId')
  String get courseId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'sortOrder')
  int get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoUrl')
  String get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentMd')
  String get contentMd => throw _privateConstructorUsedError;
  @JsonKey(name: 'durationMinutes')
  int get durationMinutes => throw _privateConstructorUsedError;

  /// Serializes this Lesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'courseId') String courseId,
      String title,
      @JsonKey(name: 'sortOrder') int sortOrder,
      @JsonKey(name: 'videoUrl') String videoUrl,
      @JsonKey(name: 'contentMd') String contentMd,
      @JsonKey(name: 'durationMinutes') int durationMinutes});
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? title = null,
    Object? sortOrder = null,
    Object? videoUrl = null,
    Object? contentMd = null,
    Object? durationMinutes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contentMd: null == contentMd
          ? _value.contentMd
          : contentMd // ignore: cast_nullable_to_non_nullable
              as String,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonImplCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$LessonImplCopyWith(
          _$LessonImpl value, $Res Function(_$LessonImpl) then) =
      __$$LessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'courseId') String courseId,
      String title,
      @JsonKey(name: 'sortOrder') int sortOrder,
      @JsonKey(name: 'videoUrl') String videoUrl,
      @JsonKey(name: 'contentMd') String contentMd,
      @JsonKey(name: 'durationMinutes') int durationMinutes});
}

/// @nodoc
class __$$LessonImplCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$LessonImpl>
    implements _$$LessonImplCopyWith<$Res> {
  __$$LessonImplCopyWithImpl(
      _$LessonImpl _value, $Res Function(_$LessonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? title = null,
    Object? sortOrder = null,
    Object? videoUrl = null,
    Object? contentMd = null,
    Object? durationMinutes = null,
  }) {
    return _then(_$LessonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contentMd: null == contentMd
          ? _value.contentMd
          : contentMd // ignore: cast_nullable_to_non_nullable
              as String,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonImpl implements _Lesson {
  const _$LessonImpl(
      {required this.id,
      @JsonKey(name: 'courseId') required this.courseId,
      required this.title,
      @JsonKey(name: 'sortOrder') required this.sortOrder,
      @JsonKey(name: 'videoUrl') this.videoUrl = '',
      @JsonKey(name: 'contentMd') this.contentMd = '',
      @JsonKey(name: 'durationMinutes') this.durationMinutes = 30});

  factory _$LessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'courseId')
  final String courseId;
  @override
  final String title;
  @override
  @JsonKey(name: 'sortOrder')
  final int sortOrder;
  @override
  @JsonKey(name: 'videoUrl')
  final String videoUrl;
  @override
  @JsonKey(name: 'contentMd')
  final String contentMd;
  @override
  @JsonKey(name: 'durationMinutes')
  final int durationMinutes;

  @override
  String toString() {
    return 'Lesson(id: $id, courseId: $courseId, title: $title, sortOrder: $sortOrder, videoUrl: $videoUrl, contentMd: $contentMd, durationMinutes: $durationMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.contentMd, contentMd) ||
                other.contentMd == contentMd) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, title, sortOrder,
      videoUrl, contentMd, durationMinutes);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      __$$LessonImplCopyWithImpl<_$LessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonImplToJson(
      this,
    );
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson(
          {required final String id,
          @JsonKey(name: 'courseId') required final String courseId,
          required final String title,
          @JsonKey(name: 'sortOrder') required final int sortOrder,
          @JsonKey(name: 'videoUrl') final String videoUrl,
          @JsonKey(name: 'contentMd') final String contentMd,
          @JsonKey(name: 'durationMinutes') final int durationMinutes}) =
      _$LessonImpl;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$LessonImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'courseId')
  String get courseId;
  @override
  String get title;
  @override
  @JsonKey(name: 'sortOrder')
  int get sortOrder;
  @override
  @JsonKey(name: 'videoUrl')
  String get videoUrl;
  @override
  @JsonKey(name: 'contentMd')
  String get contentMd;
  @override
  @JsonKey(name: 'durationMinutes')
  int get durationMinutes;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Assignment _$AssignmentFromJson(Map<String, dynamic> json) {
  return _Assignment.fromJson(json);
}

/// @nodoc
mixin _$Assignment {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseId')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseTitle')
  String get courseTitle => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'dueDate')
  String get dueDate => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;
  @JsonKey(name: 'submissionUrl')
  String? get submissionUrl => throw _privateConstructorUsedError;

  /// Serializes this Assignment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Assignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssignmentCopyWith<Assignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentCopyWith<$Res> {
  factory $AssignmentCopyWith(
          Assignment value, $Res Function(Assignment) then) =
      _$AssignmentCopyWithImpl<$Res, Assignment>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'courseId') String courseId,
      @JsonKey(name: 'courseTitle') String courseTitle,
      String title,
      String description,
      @JsonKey(name: 'dueDate') String dueDate,
      bool submitted,
      @JsonKey(name: 'submissionUrl') String? submissionUrl});
}

/// @nodoc
class _$AssignmentCopyWithImpl<$Res, $Val extends Assignment>
    implements $AssignmentCopyWith<$Res> {
  _$AssignmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Assignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
    Object? submitted = null,
    Object? submissionUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionUrl: freezed == submissionUrl
          ? _value.submissionUrl
          : submissionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignmentImplCopyWith<$Res>
    implements $AssignmentCopyWith<$Res> {
  factory _$$AssignmentImplCopyWith(
          _$AssignmentImpl value, $Res Function(_$AssignmentImpl) then) =
      __$$AssignmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'courseId') String courseId,
      @JsonKey(name: 'courseTitle') String courseTitle,
      String title,
      String description,
      @JsonKey(name: 'dueDate') String dueDate,
      bool submitted,
      @JsonKey(name: 'submissionUrl') String? submissionUrl});
}

/// @nodoc
class __$$AssignmentImplCopyWithImpl<$Res>
    extends _$AssignmentCopyWithImpl<$Res, _$AssignmentImpl>
    implements _$$AssignmentImplCopyWith<$Res> {
  __$$AssignmentImplCopyWithImpl(
      _$AssignmentImpl _value, $Res Function(_$AssignmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Assignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
    Object? submitted = null,
    Object? submissionUrl = freezed,
  }) {
    return _then(_$AssignmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionUrl: freezed == submissionUrl
          ? _value.submissionUrl
          : submissionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignmentImpl implements _Assignment {
  const _$AssignmentImpl(
      {required this.id,
      @JsonKey(name: 'courseId') required this.courseId,
      @JsonKey(name: 'courseTitle') required this.courseTitle,
      required this.title,
      required this.description,
      @JsonKey(name: 'dueDate') required this.dueDate,
      this.submitted = false,
      @JsonKey(name: 'submissionUrl') this.submissionUrl});

  factory _$AssignmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignmentImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'courseId')
  final String courseId;
  @override
  @JsonKey(name: 'courseTitle')
  final String courseTitle;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'dueDate')
  final String dueDate;
  @override
  @JsonKey()
  final bool submitted;
  @override
  @JsonKey(name: 'submissionUrl')
  final String? submissionUrl;

  @override
  String toString() {
    return 'Assignment(id: $id, courseId: $courseId, courseTitle: $courseTitle, title: $title, description: $description, dueDate: $dueDate, submitted: $submitted, submissionUrl: $submissionUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.submissionUrl, submissionUrl) ||
                other.submissionUrl == submissionUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, courseTitle, title,
      description, dueDate, submitted, submissionUrl);

  /// Create a copy of Assignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignmentImplCopyWith<_$AssignmentImpl> get copyWith =>
      __$$AssignmentImplCopyWithImpl<_$AssignmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignmentImplToJson(
      this,
    );
  }
}

abstract class _Assignment implements Assignment {
  const factory _Assignment(
          {required final String id,
          @JsonKey(name: 'courseId') required final String courseId,
          @JsonKey(name: 'courseTitle') required final String courseTitle,
          required final String title,
          required final String description,
          @JsonKey(name: 'dueDate') required final String dueDate,
          final bool submitted,
          @JsonKey(name: 'submissionUrl') final String? submissionUrl}) =
      _$AssignmentImpl;

  factory _Assignment.fromJson(Map<String, dynamic> json) =
      _$AssignmentImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'courseId')
  String get courseId;
  @override
  @JsonKey(name: 'courseTitle')
  String get courseTitle;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'dueDate')
  String get dueDate;
  @override
  bool get submitted;
  @override
  @JsonKey(name: 'submissionUrl')
  String? get submissionUrl;

  /// Create a copy of Assignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignmentImplCopyWith<_$AssignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExamQuestion _$ExamQuestionFromJson(Map<String, dynamic> json) {
  return _ExamQuestion.fromJson(json);
}

/// @nodoc
mixin _$ExamQuestion {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;

  /// Serializes this ExamQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExamQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamQuestionCopyWith<ExamQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamQuestionCopyWith<$Res> {
  factory $ExamQuestionCopyWith(
          ExamQuestion value, $Res Function(ExamQuestion) then) =
      _$ExamQuestionCopyWithImpl<$Res, ExamQuestion>;
  @useResult
  $Res call({String id, String type, String question, List<String> options});
}

/// @nodoc
class _$ExamQuestionCopyWithImpl<$Res, $Val extends ExamQuestion>
    implements $ExamQuestionCopyWith<$Res> {
  _$ExamQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? question = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamQuestionImplCopyWith<$Res>
    implements $ExamQuestionCopyWith<$Res> {
  factory _$$ExamQuestionImplCopyWith(
          _$ExamQuestionImpl value, $Res Function(_$ExamQuestionImpl) then) =
      __$$ExamQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, String question, List<String> options});
}

/// @nodoc
class __$$ExamQuestionImplCopyWithImpl<$Res>
    extends _$ExamQuestionCopyWithImpl<$Res, _$ExamQuestionImpl>
    implements _$$ExamQuestionImplCopyWith<$Res> {
  __$$ExamQuestionImplCopyWithImpl(
      _$ExamQuestionImpl _value, $Res Function(_$ExamQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? question = null,
    Object? options = null,
  }) {
    return _then(_$ExamQuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamQuestionImpl implements _ExamQuestion {
  const _$ExamQuestionImpl(
      {required this.id,
      required this.type,
      required this.question,
      final List<String> options = const []})
      : _options = options;

  factory _$ExamQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamQuestionImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String question;
  final List<String> _options;
  @override
  @JsonKey()
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ExamQuestion(id: $id, type: $type, question: $question, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, question,
      const DeepCollectionEquality().hash(_options));

  /// Create a copy of ExamQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamQuestionImplCopyWith<_$ExamQuestionImpl> get copyWith =>
      __$$ExamQuestionImplCopyWithImpl<_$ExamQuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamQuestionImplToJson(
      this,
    );
  }
}

abstract class _ExamQuestion implements ExamQuestion {
  const factory _ExamQuestion(
      {required final String id,
      required final String type,
      required final String question,
      final List<String> options}) = _$ExamQuestionImpl;

  factory _ExamQuestion.fromJson(Map<String, dynamic> json) =
      _$ExamQuestionImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get question;
  @override
  List<String> get options;

  /// Create a copy of ExamQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamQuestionImplCopyWith<_$ExamQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Exam _$ExamFromJson(Map<String, dynamic> json) {
  return _Exam.fromJson(json);
}

/// @nodoc
mixin _$Exam {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseId')
  String? get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'durationMinutes')
  int get durationMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'passScore')
  int get passScore => throw _privateConstructorUsedError;
  List<ExamQuestion> get questions => throw _privateConstructorUsedError;
  @JsonKey(name: 'alreadyTakenToday')
  bool get alreadyTakenToday => throw _privateConstructorUsedError;

  /// Serializes this Exam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Exam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamCopyWith<Exam> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamCopyWith<$Res> {
  factory $ExamCopyWith(Exam value, $Res Function(Exam) then) =
      _$ExamCopyWithImpl<$Res, Exam>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'courseId') String? courseId,
      @JsonKey(name: 'durationMinutes') int durationMinutes,
      @JsonKey(name: 'passScore') int passScore,
      List<ExamQuestion> questions,
      @JsonKey(name: 'alreadyTakenToday') bool alreadyTakenToday});
}

/// @nodoc
class _$ExamCopyWithImpl<$Res, $Val extends Exam>
    implements $ExamCopyWith<$Res> {
  _$ExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Exam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? courseId = freezed,
    Object? durationMinutes = null,
    Object? passScore = null,
    Object? questions = null,
    Object? alreadyTakenToday = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      passScore: null == passScore
          ? _value.passScore
          : passScore // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<ExamQuestion>,
      alreadyTakenToday: null == alreadyTakenToday
          ? _value.alreadyTakenToday
          : alreadyTakenToday // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamImplCopyWith<$Res> implements $ExamCopyWith<$Res> {
  factory _$$ExamImplCopyWith(
          _$ExamImpl value, $Res Function(_$ExamImpl) then) =
      __$$ExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'courseId') String? courseId,
      @JsonKey(name: 'durationMinutes') int durationMinutes,
      @JsonKey(name: 'passScore') int passScore,
      List<ExamQuestion> questions,
      @JsonKey(name: 'alreadyTakenToday') bool alreadyTakenToday});
}

/// @nodoc
class __$$ExamImplCopyWithImpl<$Res>
    extends _$ExamCopyWithImpl<$Res, _$ExamImpl>
    implements _$$ExamImplCopyWith<$Res> {
  __$$ExamImplCopyWithImpl(_$ExamImpl _value, $Res Function(_$ExamImpl) _then)
      : super(_value, _then);

  /// Create a copy of Exam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? courseId = freezed,
    Object? durationMinutes = null,
    Object? passScore = null,
    Object? questions = null,
    Object? alreadyTakenToday = null,
  }) {
    return _then(_$ExamImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      passScore: null == passScore
          ? _value.passScore
          : passScore // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<ExamQuestion>,
      alreadyTakenToday: null == alreadyTakenToday
          ? _value.alreadyTakenToday
          : alreadyTakenToday // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamImpl implements _Exam {
  const _$ExamImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'courseId') this.courseId,
      @JsonKey(name: 'durationMinutes') required this.durationMinutes,
      @JsonKey(name: 'passScore') required this.passScore,
      final List<ExamQuestion> questions = const [],
      @JsonKey(name: 'alreadyTakenToday') this.alreadyTakenToday = false})
      : _questions = questions;

  factory _$ExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'courseId')
  final String? courseId;
  @override
  @JsonKey(name: 'durationMinutes')
  final int durationMinutes;
  @override
  @JsonKey(name: 'passScore')
  final int passScore;
  final List<ExamQuestion> _questions;
  @override
  @JsonKey()
  List<ExamQuestion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey(name: 'alreadyTakenToday')
  final bool alreadyTakenToday;

  @override
  String toString() {
    return 'Exam(id: $id, title: $title, courseId: $courseId, durationMinutes: $durationMinutes, passScore: $passScore, questions: $questions, alreadyTakenToday: $alreadyTakenToday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.passScore, passScore) ||
                other.passScore == passScore) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.alreadyTakenToday, alreadyTakenToday) ||
                other.alreadyTakenToday == alreadyTakenToday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      courseId,
      durationMinutes,
      passScore,
      const DeepCollectionEquality().hash(_questions),
      alreadyTakenToday);

  /// Create a copy of Exam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamImplCopyWith<_$ExamImpl> get copyWith =>
      __$$ExamImplCopyWithImpl<_$ExamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamImplToJson(
      this,
    );
  }
}

abstract class _Exam implements Exam {
  const factory _Exam(
          {required final String id,
          required final String title,
          @JsonKey(name: 'courseId') final String? courseId,
          @JsonKey(name: 'durationMinutes') required final int durationMinutes,
          @JsonKey(name: 'passScore') required final int passScore,
          final List<ExamQuestion> questions,
          @JsonKey(name: 'alreadyTakenToday') final bool alreadyTakenToday}) =
      _$ExamImpl;

  factory _Exam.fromJson(Map<String, dynamic> json) = _$ExamImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'courseId')
  String? get courseId;
  @override
  @JsonKey(name: 'durationMinutes')
  int get durationMinutes;
  @override
  @JsonKey(name: 'passScore')
  int get passScore;
  @override
  List<ExamQuestion> get questions;
  @override
  @JsonKey(name: 'alreadyTakenToday')
  bool get alreadyTakenToday;

  /// Create a copy of Exam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamImplCopyWith<_$ExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExamListItem _$ExamListItemFromJson(Map<String, dynamic> json) {
  return _ExamListItem.fromJson(json);
}

/// @nodoc
mixin _$ExamListItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseId')
  String? get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'durationMinutes')
  int get durationMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'passScore')
  int get passScore => throw _privateConstructorUsedError;

  /// Serializes this ExamListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExamListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamListItemCopyWith<ExamListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamListItemCopyWith<$Res> {
  factory $ExamListItemCopyWith(
          ExamListItem value, $Res Function(ExamListItem) then) =
      _$ExamListItemCopyWithImpl<$Res, ExamListItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'courseId') String? courseId,
      @JsonKey(name: 'durationMinutes') int durationMinutes,
      @JsonKey(name: 'passScore') int passScore});
}

/// @nodoc
class _$ExamListItemCopyWithImpl<$Res, $Val extends ExamListItem>
    implements $ExamListItemCopyWith<$Res> {
  _$ExamListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? courseId = freezed,
    Object? durationMinutes = null,
    Object? passScore = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      passScore: null == passScore
          ? _value.passScore
          : passScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamListItemImplCopyWith<$Res>
    implements $ExamListItemCopyWith<$Res> {
  factory _$$ExamListItemImplCopyWith(
          _$ExamListItemImpl value, $Res Function(_$ExamListItemImpl) then) =
      __$$ExamListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'courseId') String? courseId,
      @JsonKey(name: 'durationMinutes') int durationMinutes,
      @JsonKey(name: 'passScore') int passScore});
}

/// @nodoc
class __$$ExamListItemImplCopyWithImpl<$Res>
    extends _$ExamListItemCopyWithImpl<$Res, _$ExamListItemImpl>
    implements _$$ExamListItemImplCopyWith<$Res> {
  __$$ExamListItemImplCopyWithImpl(
      _$ExamListItemImpl _value, $Res Function(_$ExamListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? courseId = freezed,
    Object? durationMinutes = null,
    Object? passScore = null,
  }) {
    return _then(_$ExamListItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      passScore: null == passScore
          ? _value.passScore
          : passScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamListItemImpl implements _ExamListItem {
  const _$ExamListItemImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'courseId') this.courseId,
      @JsonKey(name: 'durationMinutes') required this.durationMinutes,
      @JsonKey(name: 'passScore') required this.passScore});

  factory _$ExamListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamListItemImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'courseId')
  final String? courseId;
  @override
  @JsonKey(name: 'durationMinutes')
  final int durationMinutes;
  @override
  @JsonKey(name: 'passScore')
  final int passScore;

  @override
  String toString() {
    return 'ExamListItem(id: $id, title: $title, courseId: $courseId, durationMinutes: $durationMinutes, passScore: $passScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamListItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.passScore, passScore) ||
                other.passScore == passScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, courseId, durationMinutes, passScore);

  /// Create a copy of ExamListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamListItemImplCopyWith<_$ExamListItemImpl> get copyWith =>
      __$$ExamListItemImplCopyWithImpl<_$ExamListItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamListItemImplToJson(
      this,
    );
  }
}

abstract class _ExamListItem implements ExamListItem {
  const factory _ExamListItem(
          {required final String id,
          required final String title,
          @JsonKey(name: 'courseId') final String? courseId,
          @JsonKey(name: 'durationMinutes') required final int durationMinutes,
          @JsonKey(name: 'passScore') required final int passScore}) =
      _$ExamListItemImpl;

  factory _ExamListItem.fromJson(Map<String, dynamic> json) =
      _$ExamListItemImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'courseId')
  String? get courseId;
  @override
  @JsonKey(name: 'durationMinutes')
  int get durationMinutes;
  @override
  @JsonKey(name: 'passScore')
  int get passScore;

  /// Create a copy of ExamListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamListItemImplCopyWith<_$ExamListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExamSubmission _$ExamSubmissionFromJson(Map<String, dynamic> json) {
  return _ExamSubmission.fromJson(json);
}

/// @nodoc
mixin _$ExamSubmission {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'examId')
  String get examId => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  bool get passed => throw _privateConstructorUsedError;
  @JsonKey(name: 'passScore')
  int get passScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalQuestions')
  int get totalQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'correctCount')
  int get correctCount => throw _privateConstructorUsedError;

  /// Serializes this ExamSubmission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExamSubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamSubmissionCopyWith<ExamSubmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamSubmissionCopyWith<$Res> {
  factory $ExamSubmissionCopyWith(
          ExamSubmission value, $Res Function(ExamSubmission) then) =
      _$ExamSubmissionCopyWithImpl<$Res, ExamSubmission>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'examId') String examId,
      double score,
      bool passed,
      @JsonKey(name: 'passScore') int passScore,
      @JsonKey(name: 'totalQuestions') int totalQuestions,
      @JsonKey(name: 'correctCount') int correctCount});
}

/// @nodoc
class _$ExamSubmissionCopyWithImpl<$Res, $Val extends ExamSubmission>
    implements $ExamSubmissionCopyWith<$Res> {
  _$ExamSubmissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamSubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? score = null,
    Object? passed = null,
    Object? passScore = null,
    Object? totalQuestions = null,
    Object? correctCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      passScore: null == passScore
          ? _value.passScore
          : passScore // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctCount: null == correctCount
          ? _value.correctCount
          : correctCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamSubmissionImplCopyWith<$Res>
    implements $ExamSubmissionCopyWith<$Res> {
  factory _$$ExamSubmissionImplCopyWith(_$ExamSubmissionImpl value,
          $Res Function(_$ExamSubmissionImpl) then) =
      __$$ExamSubmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'examId') String examId,
      double score,
      bool passed,
      @JsonKey(name: 'passScore') int passScore,
      @JsonKey(name: 'totalQuestions') int totalQuestions,
      @JsonKey(name: 'correctCount') int correctCount});
}

/// @nodoc
class __$$ExamSubmissionImplCopyWithImpl<$Res>
    extends _$ExamSubmissionCopyWithImpl<$Res, _$ExamSubmissionImpl>
    implements _$$ExamSubmissionImplCopyWith<$Res> {
  __$$ExamSubmissionImplCopyWithImpl(
      _$ExamSubmissionImpl _value, $Res Function(_$ExamSubmissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamSubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? score = null,
    Object? passed = null,
    Object? passScore = null,
    Object? totalQuestions = null,
    Object? correctCount = null,
  }) {
    return _then(_$ExamSubmissionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      passScore: null == passScore
          ? _value.passScore
          : passScore // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctCount: null == correctCount
          ? _value.correctCount
          : correctCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamSubmissionImpl implements _ExamSubmission {
  const _$ExamSubmissionImpl(
      {required this.id,
      @JsonKey(name: 'examId') required this.examId,
      required this.score,
      required this.passed,
      @JsonKey(name: 'passScore') required this.passScore,
      @JsonKey(name: 'totalQuestions') required this.totalQuestions,
      @JsonKey(name: 'correctCount') required this.correctCount});

  factory _$ExamSubmissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamSubmissionImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'examId')
  final String examId;
  @override
  final double score;
  @override
  final bool passed;
  @override
  @JsonKey(name: 'passScore')
  final int passScore;
  @override
  @JsonKey(name: 'totalQuestions')
  final int totalQuestions;
  @override
  @JsonKey(name: 'correctCount')
  final int correctCount;

  @override
  String toString() {
    return 'ExamSubmission(id: $id, examId: $examId, score: $score, passed: $passed, passScore: $passScore, totalQuestions: $totalQuestions, correctCount: $correctCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamSubmissionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.passed, passed) || other.passed == passed) &&
            (identical(other.passScore, passScore) ||
                other.passScore == passScore) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correctCount, correctCount) ||
                other.correctCount == correctCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, examId, score, passed,
      passScore, totalQuestions, correctCount);

  /// Create a copy of ExamSubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamSubmissionImplCopyWith<_$ExamSubmissionImpl> get copyWith =>
      __$$ExamSubmissionImplCopyWithImpl<_$ExamSubmissionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamSubmissionImplToJson(
      this,
    );
  }
}

abstract class _ExamSubmission implements ExamSubmission {
  const factory _ExamSubmission(
          {required final String id,
          @JsonKey(name: 'examId') required final String examId,
          required final double score,
          required final bool passed,
          @JsonKey(name: 'passScore') required final int passScore,
          @JsonKey(name: 'totalQuestions') required final int totalQuestions,
          @JsonKey(name: 'correctCount') required final int correctCount}) =
      _$ExamSubmissionImpl;

  factory _ExamSubmission.fromJson(Map<String, dynamic> json) =
      _$ExamSubmissionImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'examId')
  String get examId;
  @override
  double get score;
  @override
  bool get passed;
  @override
  @JsonKey(name: 'passScore')
  int get passScore;
  @override
  @JsonKey(name: 'totalQuestions')
  int get totalQuestions;
  @override
  @JsonKey(name: 'correctCount')
  int get correctCount;

  /// Create a copy of ExamSubmission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamSubmissionImplCopyWith<_$ExamSubmissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScoreRecord _$ScoreRecordFromJson(Map<String, dynamic> json) {
  return _ScoreRecord.fromJson(json);
}

/// @nodoc
mixin _$ScoreRecord {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'examId')
  String get examId => throw _privateConstructorUsedError;
  @JsonKey(name: 'examTitle')
  String get examTitle => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  bool get passed => throw _privateConstructorUsedError;
  @JsonKey(name: 'passScore')
  int get passScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'submittedAt')
  String get submittedAt => throw _privateConstructorUsedError;

  /// Serializes this ScoreRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoreRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoreRecordCopyWith<ScoreRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreRecordCopyWith<$Res> {
  factory $ScoreRecordCopyWith(
          ScoreRecord value, $Res Function(ScoreRecord) then) =
      _$ScoreRecordCopyWithImpl<$Res, ScoreRecord>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'examId') String examId,
      @JsonKey(name: 'examTitle') String examTitle,
      double score,
      bool passed,
      @JsonKey(name: 'passScore') int passScore,
      @JsonKey(name: 'submittedAt') String submittedAt});
}

/// @nodoc
class _$ScoreRecordCopyWithImpl<$Res, $Val extends ScoreRecord>
    implements $ScoreRecordCopyWith<$Res> {
  _$ScoreRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoreRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? examTitle = null,
    Object? score = null,
    Object? passed = null,
    Object? passScore = null,
    Object? submittedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
      examTitle: null == examTitle
          ? _value.examTitle
          : examTitle // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      passScore: null == passScore
          ? _value.passScore
          : passScore // ignore: cast_nullable_to_non_nullable
              as int,
      submittedAt: null == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreRecordImplCopyWith<$Res>
    implements $ScoreRecordCopyWith<$Res> {
  factory _$$ScoreRecordImplCopyWith(
          _$ScoreRecordImpl value, $Res Function(_$ScoreRecordImpl) then) =
      __$$ScoreRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'examId') String examId,
      @JsonKey(name: 'examTitle') String examTitle,
      double score,
      bool passed,
      @JsonKey(name: 'passScore') int passScore,
      @JsonKey(name: 'submittedAt') String submittedAt});
}

/// @nodoc
class __$$ScoreRecordImplCopyWithImpl<$Res>
    extends _$ScoreRecordCopyWithImpl<$Res, _$ScoreRecordImpl>
    implements _$$ScoreRecordImplCopyWith<$Res> {
  __$$ScoreRecordImplCopyWithImpl(
      _$ScoreRecordImpl _value, $Res Function(_$ScoreRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScoreRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? examTitle = null,
    Object? score = null,
    Object? passed = null,
    Object? passScore = null,
    Object? submittedAt = null,
  }) {
    return _then(_$ScoreRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String,
      examTitle: null == examTitle
          ? _value.examTitle
          : examTitle // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      passScore: null == passScore
          ? _value.passScore
          : passScore // ignore: cast_nullable_to_non_nullable
              as int,
      submittedAt: null == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreRecordImpl implements _ScoreRecord {
  const _$ScoreRecordImpl(
      {required this.id,
      @JsonKey(name: 'examId') required this.examId,
      @JsonKey(name: 'examTitle') required this.examTitle,
      required this.score,
      required this.passed,
      @JsonKey(name: 'passScore') required this.passScore,
      @JsonKey(name: 'submittedAt') required this.submittedAt});

  factory _$ScoreRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreRecordImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'examId')
  final String examId;
  @override
  @JsonKey(name: 'examTitle')
  final String examTitle;
  @override
  final double score;
  @override
  final bool passed;
  @override
  @JsonKey(name: 'passScore')
  final int passScore;
  @override
  @JsonKey(name: 'submittedAt')
  final String submittedAt;

  @override
  String toString() {
    return 'ScoreRecord(id: $id, examId: $examId, examTitle: $examTitle, score: $score, passed: $passed, passScore: $passScore, submittedAt: $submittedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.examTitle, examTitle) ||
                other.examTitle == examTitle) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.passed, passed) || other.passed == passed) &&
            (identical(other.passScore, passScore) ||
                other.passScore == passScore) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, examId, examTitle, score,
      passed, passScore, submittedAt);

  /// Create a copy of ScoreRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreRecordImplCopyWith<_$ScoreRecordImpl> get copyWith =>
      __$$ScoreRecordImplCopyWithImpl<_$ScoreRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreRecordImplToJson(
      this,
    );
  }
}

abstract class _ScoreRecord implements ScoreRecord {
  const factory _ScoreRecord(
          {required final String id,
          @JsonKey(name: 'examId') required final String examId,
          @JsonKey(name: 'examTitle') required final String examTitle,
          required final double score,
          required final bool passed,
          @JsonKey(name: 'passScore') required final int passScore,
          @JsonKey(name: 'submittedAt') required final String submittedAt}) =
      _$ScoreRecordImpl;

  factory _ScoreRecord.fromJson(Map<String, dynamic> json) =
      _$ScoreRecordImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'examId')
  String get examId;
  @override
  @JsonKey(name: 'examTitle')
  String get examTitle;
  @override
  double get score;
  @override
  bool get passed;
  @override
  @JsonKey(name: 'passScore')
  int get passScore;
  @override
  @JsonKey(name: 'submittedAt')
  String get submittedAt;

  /// Create a copy of ScoreRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoreRecordImplCopyWith<_$ScoreRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Certificate _$CertificateFromJson(Map<String, dynamic> json) {
  return _Certificate.fromJson(json);
}

/// @nodoc
mixin _$Certificate {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'certNo')
  String get certNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseName')
  String get courseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'examId')
  String? get examId => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuedAt')
  String get issuedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'holderName')
  String? get holderName => throw _privateConstructorUsedError;

  /// Serializes this Certificate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CertificateCopyWith<Certificate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateCopyWith<$Res> {
  factory $CertificateCopyWith(
          Certificate value, $Res Function(Certificate) then) =
      _$CertificateCopyWithImpl<$Res, Certificate>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'certNo') String certNo,
      @JsonKey(name: 'courseName') String courseName,
      @JsonKey(name: 'examId') String? examId,
      @JsonKey(name: 'issuedAt') String issuedAt,
      @JsonKey(name: 'holderName') String? holderName});
}

/// @nodoc
class _$CertificateCopyWithImpl<$Res, $Val extends Certificate>
    implements $CertificateCopyWith<$Res> {
  _$CertificateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? certNo = null,
    Object? courseName = null,
    Object? examId = freezed,
    Object? issuedAt = null,
    Object? holderName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      certNo: null == certNo
          ? _value.certNo
          : certNo // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as String,
      holderName: freezed == holderName
          ? _value.holderName
          : holderName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CertificateImplCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory _$$CertificateImplCopyWith(
          _$CertificateImpl value, $Res Function(_$CertificateImpl) then) =
      __$$CertificateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'certNo') String certNo,
      @JsonKey(name: 'courseName') String courseName,
      @JsonKey(name: 'examId') String? examId,
      @JsonKey(name: 'issuedAt') String issuedAt,
      @JsonKey(name: 'holderName') String? holderName});
}

/// @nodoc
class __$$CertificateImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$CertificateImpl>
    implements _$$CertificateImplCopyWith<$Res> {
  __$$CertificateImplCopyWithImpl(
      _$CertificateImpl _value, $Res Function(_$CertificateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? certNo = null,
    Object? courseName = null,
    Object? examId = freezed,
    Object? issuedAt = null,
    Object? holderName = freezed,
  }) {
    return _then(_$CertificateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      certNo: null == certNo
          ? _value.certNo
          : certNo // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as String,
      holderName: freezed == holderName
          ? _value.holderName
          : holderName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificateImpl implements _Certificate {
  const _$CertificateImpl(
      {required this.id,
      @JsonKey(name: 'certNo') required this.certNo,
      @JsonKey(name: 'courseName') required this.courseName,
      @JsonKey(name: 'examId') this.examId,
      @JsonKey(name: 'issuedAt') required this.issuedAt,
      @JsonKey(name: 'holderName') this.holderName});

  factory _$CertificateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificateImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'certNo')
  final String certNo;
  @override
  @JsonKey(name: 'courseName')
  final String courseName;
  @override
  @JsonKey(name: 'examId')
  final String? examId;
  @override
  @JsonKey(name: 'issuedAt')
  final String issuedAt;
  @override
  @JsonKey(name: 'holderName')
  final String? holderName;

  @override
  String toString() {
    return 'Certificate(id: $id, certNo: $certNo, courseName: $courseName, examId: $examId, issuedAt: $issuedAt, holderName: $holderName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.certNo, certNo) || other.certNo == certNo) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt) &&
            (identical(other.holderName, holderName) ||
                other.holderName == holderName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, certNo, courseName, examId, issuedAt, holderName);

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificateImplCopyWith<_$CertificateImpl> get copyWith =>
      __$$CertificateImplCopyWithImpl<_$CertificateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificateImplToJson(
      this,
    );
  }
}

abstract class _Certificate implements Certificate {
  const factory _Certificate(
          {required final String id,
          @JsonKey(name: 'certNo') required final String certNo,
          @JsonKey(name: 'courseName') required final String courseName,
          @JsonKey(name: 'examId') final String? examId,
          @JsonKey(name: 'issuedAt') required final String issuedAt,
          @JsonKey(name: 'holderName') final String? holderName}) =
      _$CertificateImpl;

  factory _Certificate.fromJson(Map<String, dynamic> json) =
      _$CertificateImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'certNo')
  String get certNo;
  @override
  @JsonKey(name: 'courseName')
  String get courseName;
  @override
  @JsonKey(name: 'examId')
  String? get examId;
  @override
  @JsonKey(name: 'issuedAt')
  String get issuedAt;
  @override
  @JsonKey(name: 'holderName')
  String? get holderName;

  /// Create a copy of Certificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertificateImplCopyWith<_$CertificateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'salaryRange')
  String get salaryRange => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get requirements => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Serializes this Job to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call(
      {String id,
      String title,
      String company,
      @JsonKey(name: 'salaryRange') String salaryRange,
      String city,
      String requirements,
      String description,
      String category});
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? company = null,
    Object? salaryRange = null,
    Object? city = null,
    Object? requirements = null,
    Object? description = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      salaryRange: null == salaryRange
          ? _value.salaryRange
          : salaryRange // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobImplCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$JobImplCopyWith(_$JobImpl value, $Res Function(_$JobImpl) then) =
      __$$JobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String company,
      @JsonKey(name: 'salaryRange') String salaryRange,
      String city,
      String requirements,
      String description,
      String category});
}

/// @nodoc
class __$$JobImplCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$JobImpl>
    implements _$$JobImplCopyWith<$Res> {
  __$$JobImplCopyWithImpl(_$JobImpl _value, $Res Function(_$JobImpl) _then)
      : super(_value, _then);

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? company = null,
    Object? salaryRange = null,
    Object? city = null,
    Object? requirements = null,
    Object? description = null,
    Object? category = null,
  }) {
    return _then(_$JobImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      salaryRange: null == salaryRange
          ? _value.salaryRange
          : salaryRange // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobImpl implements _Job {
  const _$JobImpl(
      {required this.id,
      required this.title,
      required this.company,
      @JsonKey(name: 'salaryRange') this.salaryRange = '',
      this.city = '',
      this.requirements = '',
      this.description = '',
      this.category = ''});

  factory _$JobImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String company;
  @override
  @JsonKey(name: 'salaryRange')
  final String salaryRange;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String requirements;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String category;

  @override
  String toString() {
    return 'Job(id: $id, title: $title, company: $company, salaryRange: $salaryRange, city: $city, requirements: $requirements, description: $description, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.salaryRange, salaryRange) ||
                other.salaryRange == salaryRange) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, company, salaryRange,
      city, requirements, description, category);

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      __$$JobImplCopyWithImpl<_$JobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobImplToJson(
      this,
    );
  }
}

abstract class _Job implements Job {
  const factory _Job(
      {required final String id,
      required final String title,
      required final String company,
      @JsonKey(name: 'salaryRange') final String salaryRange,
      final String city,
      final String requirements,
      final String description,
      final String category}) = _$JobImpl;

  factory _Job.fromJson(Map<String, dynamic> json) = _$JobImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get company;
  @override
  @JsonKey(name: 'salaryRange')
  String get salaryRange;
  @override
  String get city;
  @override
  String get requirements;
  @override
  String get description;
  @override
  String get category;

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QaThread _$QaThreadFromJson(Map<String, dynamic> json) {
  return _QaThread.fromJson(json);
}

/// @nodoc
mixin _$QaThread {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseId')
  String? get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseTitle')
  String? get courseTitle => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'answeredAt')
  String? get answeredAt => throw _privateConstructorUsedError;

  /// Serializes this QaThread to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QaThread
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QaThreadCopyWith<QaThread> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QaThreadCopyWith<$Res> {
  factory $QaThreadCopyWith(QaThread value, $Res Function(QaThread) then) =
      _$QaThreadCopyWithImpl<$Res, QaThread>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'courseId') String? courseId,
      @JsonKey(name: 'courseTitle') String? courseTitle,
      String question,
      String answer,
      String status,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'answeredAt') String? answeredAt});
}

/// @nodoc
class _$QaThreadCopyWithImpl<$Res, $Val extends QaThread>
    implements $QaThreadCopyWith<$Res> {
  _$QaThreadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QaThread
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = freezed,
    Object? courseTitle = freezed,
    Object? question = null,
    Object? answer = null,
    Object? status = null,
    Object? createdAt = null,
    Object? answeredAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      answeredAt: freezed == answeredAt
          ? _value.answeredAt
          : answeredAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QaThreadImplCopyWith<$Res>
    implements $QaThreadCopyWith<$Res> {
  factory _$$QaThreadImplCopyWith(
          _$QaThreadImpl value, $Res Function(_$QaThreadImpl) then) =
      __$$QaThreadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'courseId') String? courseId,
      @JsonKey(name: 'courseTitle') String? courseTitle,
      String question,
      String answer,
      String status,
      @JsonKey(name: 'createdAt') String createdAt,
      @JsonKey(name: 'answeredAt') String? answeredAt});
}

/// @nodoc
class __$$QaThreadImplCopyWithImpl<$Res>
    extends _$QaThreadCopyWithImpl<$Res, _$QaThreadImpl>
    implements _$$QaThreadImplCopyWith<$Res> {
  __$$QaThreadImplCopyWithImpl(
      _$QaThreadImpl _value, $Res Function(_$QaThreadImpl) _then)
      : super(_value, _then);

  /// Create a copy of QaThread
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = freezed,
    Object? courseTitle = freezed,
    Object? question = null,
    Object? answer = null,
    Object? status = null,
    Object? createdAt = null,
    Object? answeredAt = freezed,
  }) {
    return _then(_$QaThreadImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseTitle: freezed == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      answeredAt: freezed == answeredAt
          ? _value.answeredAt
          : answeredAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QaThreadImpl implements _QaThread {
  const _$QaThreadImpl(
      {required this.id,
      @JsonKey(name: 'courseId') this.courseId,
      @JsonKey(name: 'courseTitle') this.courseTitle,
      required this.question,
      this.answer = '',
      required this.status,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'answeredAt') this.answeredAt});

  factory _$QaThreadImpl.fromJson(Map<String, dynamic> json) =>
      _$$QaThreadImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'courseId')
  final String? courseId;
  @override
  @JsonKey(name: 'courseTitle')
  final String? courseTitle;
  @override
  final String question;
  @override
  @JsonKey()
  final String answer;
  @override
  final String status;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'answeredAt')
  final String? answeredAt;

  @override
  String toString() {
    return 'QaThread(id: $id, courseId: $courseId, courseTitle: $courseTitle, question: $question, answer: $answer, status: $status, createdAt: $createdAt, answeredAt: $answeredAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QaThreadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.answeredAt, answeredAt) ||
                other.answeredAt == answeredAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, courseTitle,
      question, answer, status, createdAt, answeredAt);

  /// Create a copy of QaThread
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QaThreadImplCopyWith<_$QaThreadImpl> get copyWith =>
      __$$QaThreadImplCopyWithImpl<_$QaThreadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QaThreadImplToJson(
      this,
    );
  }
}

abstract class _QaThread implements QaThread {
  const factory _QaThread(
      {required final String id,
      @JsonKey(name: 'courseId') final String? courseId,
      @JsonKey(name: 'courseTitle') final String? courseTitle,
      required final String question,
      final String answer,
      required final String status,
      @JsonKey(name: 'createdAt') required final String createdAt,
      @JsonKey(name: 'answeredAt') final String? answeredAt}) = _$QaThreadImpl;

  factory _QaThread.fromJson(Map<String, dynamic> json) =
      _$QaThreadImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'courseId')
  String? get courseId;
  @override
  @JsonKey(name: 'courseTitle')
  String? get courseTitle;
  @override
  String get question;
  @override
  String get answer;
  @override
  String get status;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'answeredAt')
  String? get answeredAt;

  /// Create a copy of QaThread
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QaThreadImplCopyWith<_$QaThreadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Installment _$InstallmentFromJson(Map<String, dynamic> json) {
  return _Installment.fromJson(json);
}

/// @nodoc
mixin _$Installment {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'enrollmentId')
  String get enrollmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseId')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'courseTitle')
  String get courseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'periodNo')
  int get periodNo => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'dueDate')
  String get dueDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'paidAt')
  String? get paidAt => throw _privateConstructorUsedError;

  /// Serializes this Installment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Installment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstallmentCopyWith<Installment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstallmentCopyWith<$Res> {
  factory $InstallmentCopyWith(
          Installment value, $Res Function(Installment) then) =
      _$InstallmentCopyWithImpl<$Res, Installment>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'enrollmentId') String enrollmentId,
      @JsonKey(name: 'courseId') String courseId,
      @JsonKey(name: 'courseTitle') String courseTitle,
      @JsonKey(name: 'periodNo') int periodNo,
      double amount,
      @JsonKey(name: 'dueDate') String dueDate,
      String status,
      @JsonKey(name: 'paidAt') String? paidAt});
}

/// @nodoc
class _$InstallmentCopyWithImpl<$Res, $Val extends Installment>
    implements $InstallmentCopyWith<$Res> {
  _$InstallmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Installment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? enrollmentId = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? periodNo = null,
    Object? amount = null,
    Object? dueDate = null,
    Object? status = null,
    Object? paidAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      enrollmentId: null == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      periodNo: null == periodNo
          ? _value.periodNo
          : periodNo // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstallmentImplCopyWith<$Res>
    implements $InstallmentCopyWith<$Res> {
  factory _$$InstallmentImplCopyWith(
          _$InstallmentImpl value, $Res Function(_$InstallmentImpl) then) =
      __$$InstallmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'enrollmentId') String enrollmentId,
      @JsonKey(name: 'courseId') String courseId,
      @JsonKey(name: 'courseTitle') String courseTitle,
      @JsonKey(name: 'periodNo') int periodNo,
      double amount,
      @JsonKey(name: 'dueDate') String dueDate,
      String status,
      @JsonKey(name: 'paidAt') String? paidAt});
}

/// @nodoc
class __$$InstallmentImplCopyWithImpl<$Res>
    extends _$InstallmentCopyWithImpl<$Res, _$InstallmentImpl>
    implements _$$InstallmentImplCopyWith<$Res> {
  __$$InstallmentImplCopyWithImpl(
      _$InstallmentImpl _value, $Res Function(_$InstallmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Installment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? enrollmentId = null,
    Object? courseId = null,
    Object? courseTitle = null,
    Object? periodNo = null,
    Object? amount = null,
    Object? dueDate = null,
    Object? status = null,
    Object? paidAt = freezed,
  }) {
    return _then(_$InstallmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      enrollmentId: null == enrollmentId
          ? _value.enrollmentId
          : enrollmentId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      periodNo: null == periodNo
          ? _value.periodNo
          : periodNo // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstallmentImpl implements _Installment {
  const _$InstallmentImpl(
      {required this.id,
      @JsonKey(name: 'enrollmentId') required this.enrollmentId,
      @JsonKey(name: 'courseId') required this.courseId,
      @JsonKey(name: 'courseTitle') required this.courseTitle,
      @JsonKey(name: 'periodNo') required this.periodNo,
      required this.amount,
      @JsonKey(name: 'dueDate') required this.dueDate,
      required this.status,
      @JsonKey(name: 'paidAt') this.paidAt});

  factory _$InstallmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstallmentImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'enrollmentId')
  final String enrollmentId;
  @override
  @JsonKey(name: 'courseId')
  final String courseId;
  @override
  @JsonKey(name: 'courseTitle')
  final String courseTitle;
  @override
  @JsonKey(name: 'periodNo')
  final int periodNo;
  @override
  final double amount;
  @override
  @JsonKey(name: 'dueDate')
  final String dueDate;
  @override
  final String status;
  @override
  @JsonKey(name: 'paidAt')
  final String? paidAt;

  @override
  String toString() {
    return 'Installment(id: $id, enrollmentId: $enrollmentId, courseId: $courseId, courseTitle: $courseTitle, periodNo: $periodNo, amount: $amount, dueDate: $dueDate, status: $status, paidAt: $paidAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstallmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.periodNo, periodNo) ||
                other.periodNo == periodNo) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, enrollmentId, courseId,
      courseTitle, periodNo, amount, dueDate, status, paidAt);

  /// Create a copy of Installment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstallmentImplCopyWith<_$InstallmentImpl> get copyWith =>
      __$$InstallmentImplCopyWithImpl<_$InstallmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstallmentImplToJson(
      this,
    );
  }
}

abstract class _Installment implements Installment {
  const factory _Installment(
      {required final String id,
      @JsonKey(name: 'enrollmentId') required final String enrollmentId,
      @JsonKey(name: 'courseId') required final String courseId,
      @JsonKey(name: 'courseTitle') required final String courseTitle,
      @JsonKey(name: 'periodNo') required final int periodNo,
      required final double amount,
      @JsonKey(name: 'dueDate') required final String dueDate,
      required final String status,
      @JsonKey(name: 'paidAt') final String? paidAt}) = _$InstallmentImpl;

  factory _Installment.fromJson(Map<String, dynamic> json) =
      _$InstallmentImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'enrollmentId')
  String get enrollmentId;
  @override
  @JsonKey(name: 'courseId')
  String get courseId;
  @override
  @JsonKey(name: 'courseTitle')
  String get courseTitle;
  @override
  @JsonKey(name: 'periodNo')
  int get periodNo;
  @override
  double get amount;
  @override
  @JsonKey(name: 'dueDate')
  String get dueDate;
  @override
  String get status;
  @override
  @JsonKey(name: 'paidAt')
  String? get paidAt;

  /// Create a copy of Installment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstallmentImplCopyWith<_$InstallmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppNotification _$AppNotificationFromJson(Map<String, dynamic> json) {
  return _AppNotification.fromJson(json);
}

/// @nodoc
mixin _$AppNotification {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this AppNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppNotificationCopyWith<AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationCopyWith<$Res> {
  factory $AppNotificationCopyWith(
          AppNotification value, $Res Function(AppNotification) then) =
      _$AppNotificationCopyWithImpl<$Res, AppNotification>;
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      String type,
      bool read,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class _$AppNotificationCopyWithImpl<$Res, $Val extends AppNotification>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? read = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppNotificationImplCopyWith<$Res>
    implements $AppNotificationCopyWith<$Res> {
  factory _$$AppNotificationImplCopyWith(_$AppNotificationImpl value,
          $Res Function(_$AppNotificationImpl) then) =
      __$$AppNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      String type,
      bool read,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class __$$AppNotificationImplCopyWithImpl<$Res>
    extends _$AppNotificationCopyWithImpl<$Res, _$AppNotificationImpl>
    implements _$$AppNotificationImplCopyWith<$Res> {
  __$$AppNotificationImplCopyWithImpl(
      _$AppNotificationImpl _value, $Res Function(_$AppNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? read = null,
    Object? createdAt = null,
  }) {
    return _then(_$AppNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppNotificationImpl implements _AppNotification {
  const _$AppNotificationImpl(
      {required this.id,
      required this.title,
      required this.body,
      required this.type,
      this.read = false,
      @JsonKey(name: 'createdAt') required this.createdAt});

  factory _$AppNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppNotificationImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String type;
  @override
  @JsonKey()
  final bool read;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;

  @override
  String toString() {
    return 'AppNotification(id: $id, title: $title, body: $body, type: $type, read: $read, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, body, type, read, createdAt);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      __$$AppNotificationImplCopyWithImpl<_$AppNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppNotificationImplToJson(
      this,
    );
  }
}

abstract class _AppNotification implements AppNotification {
  const factory _AppNotification(
          {required final String id,
          required final String title,
          required final String body,
          required final String type,
          final bool read,
          @JsonKey(name: 'createdAt') required final String createdAt}) =
      _$AppNotificationImpl;

  factory _AppNotification.fromJson(Map<String, dynamic> json) =
      _$AppNotificationImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  String get type;
  @override
  bool get read;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
