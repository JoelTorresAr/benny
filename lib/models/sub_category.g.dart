// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubCategory> _$subCategorySerializer = new _$SubCategorySerializer();

class _$SubCategorySerializer implements StructuredSerializer<SubCategory> {
  @override
  final Iterable<Type> types = const [SubCategory, _$SubCategory];
  @override
  final String wireName = 'SubCategory';

  @override
  Iterable<Object> serialize(Serializers serializers, SubCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'subtitle',
      serializers.serialize(object.subtitle,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
    ];
    if (object.categoryId != null) {
      result
        ..add('category_id')
        ..add(serializers.serialize(object.categoryId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SubCategory deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubCategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_id':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subtitle':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SubCategory extends SubCategory {
  @override
  final String id;
  @override
  final String categoryId;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String subtitle;
  @override
  final String image;

  factory _$SubCategory([void Function(SubCategoryBuilder) updates]) =>
      (new SubCategoryBuilder()..update(updates)).build();

  _$SubCategory._(
      {this.id,
      this.categoryId,
      this.name,
      this.slug,
      this.subtitle,
      this.image})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('SubCategory', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('SubCategory', 'name');
    }
    if (subtitle == null) {
      throw new BuiltValueNullFieldError('SubCategory', 'subtitle');
    }
    if (image == null) {
      throw new BuiltValueNullFieldError('SubCategory', 'image');
    }
  }

  @override
  SubCategory rebuild(void Function(SubCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubCategoryBuilder toBuilder() => new SubCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubCategory &&
        id == other.id &&
        categoryId == other.categoryId &&
        name == other.name &&
        slug == other.slug &&
        subtitle == other.subtitle &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), categoryId.hashCode),
                    name.hashCode),
                slug.hashCode),
            subtitle.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubCategory')
          ..add('id', id)
          ..add('categoryId', categoryId)
          ..add('name', name)
          ..add('slug', slug)
          ..add('subtitle', subtitle)
          ..add('image', image))
        .toString();
  }
}

class SubCategoryBuilder implements Builder<SubCategory, SubCategoryBuilder> {
  _$SubCategory _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _categoryId;
  String get categoryId => _$this._categoryId;
  set categoryId(String categoryId) => _$this._categoryId = categoryId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _subtitle;
  String get subtitle => _$this._subtitle;
  set subtitle(String subtitle) => _$this._subtitle = subtitle;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  SubCategoryBuilder();

  SubCategoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _categoryId = _$v.categoryId;
      _name = _$v.name;
      _slug = _$v.slug;
      _subtitle = _$v.subtitle;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubCategory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubCategory;
  }

  @override
  void update(void Function(SubCategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubCategory build() {
    final _$result = _$v ??
        new _$SubCategory._(
            id: id,
            categoryId: categoryId,
            name: name,
            slug: slug,
            subtitle: subtitle,
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
