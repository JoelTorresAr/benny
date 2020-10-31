// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Product> _$productSerializer = new _$ProductSerializer();

class _$ProductSerializer implements StructuredSerializer<Product> {
  @override
  final Iterable<Type> types = const [Product, _$Product];
  @override
  final String wireName = 'Product';

  @override
  Iterable<Object> serialize(Serializers serializers, Product object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(String)),
    ];
    if (object.rowOrder != null) {
      result
        ..add('row_order')
        ..add(serializers.serialize(object.rowOrder,
            specifiedType: const FullType(String)));
    }
    if (object.indicator != null) {
      result
        ..add('indicator')
        ..add(serializers.serialize(object.indicator,
            specifiedType: const FullType(String)));
    }
    if (object.otherImages != null) {
      result
        ..add('other_images')
        ..add(serializers.serialize(object.otherImages,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.dateAdded != null) {
      result
        ..add('date_added')
        ..add(serializers.serialize(object.dateAdded,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Product deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductBuilder();

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
        case 'row_order':
          result.rowOrder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'indicator':
          result.indicator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'other_images':
          result.otherImages = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_added':
          result.dateAdded = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Product extends Product {
  @override
  final String id;
  @override
  final String rowOrder;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String categoryId;
  @override
  final String subcategoryId;
  @override
  final String indicator;
  @override
  final String image;
  @override
  final BuiltList otherImages;
  @override
  final String description;
  @override
  final String status;
  @override
  final String dateAdded;
  @override
  final String price;
  @override
  final BuiltList variants;

  factory _$Product([void Function(ProductBuilder) updates]) =>
      (new ProductBuilder()..update(updates)).build();

  _$Product._(
      {this.id,
      this.rowOrder,
      this.name,
      this.slug,
      this.categoryId,
      this.subcategoryId,
      this.indicator,
      this.image,
      this.otherImages,
      this.description,
      this.status,
      this.dateAdded,
      this.price,
      this.variants})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Product', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Product', 'name');
    }
    if (image == null) {
      throw new BuiltValueNullFieldError('Product', 'image');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Product', 'description');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('Product', 'status');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('Product', 'price');
    }
  }

  @override
  Product rebuild(void Function(ProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductBuilder toBuilder() => new ProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        id == other.id &&
        rowOrder == other.rowOrder &&
        name == other.name &&
        slug == other.slug &&
        categoryId == other.categoryId &&
        subcategoryId == other.subcategoryId &&
        indicator == other.indicator &&
        image == other.image &&
        otherImages == other.otherImages &&
        description == other.description &&
        status == other.status &&
        dateAdded == other.dateAdded &&
        price == other.price &&
        variants == other.variants;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        rowOrder.hashCode),
                                                    name.hashCode),
                                                slug.hashCode),
                                            categoryId.hashCode),
                                        subcategoryId.hashCode),
                                    indicator.hashCode),
                                image.hashCode),
                            otherImages.hashCode),
                        description.hashCode),
                    status.hashCode),
                dateAdded.hashCode),
            price.hashCode),
        variants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Product')
          ..add('id', id)
          ..add('rowOrder', rowOrder)
          ..add('name', name)
          ..add('slug', slug)
          ..add('categoryId', categoryId)
          ..add('subcategoryId', subcategoryId)
          ..add('indicator', indicator)
          ..add('image', image)
          ..add('otherImages', otherImages)
          ..add('description', description)
          ..add('status', status)
          ..add('dateAdded', dateAdded)
          ..add('price', price)
          ..add('variants', variants))
        .toString();
  }
}

class ProductBuilder implements Builder<Product, ProductBuilder> {
  _$Product _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _rowOrder;
  String get rowOrder => _$this._rowOrder;
  set rowOrder(String rowOrder) => _$this._rowOrder = rowOrder;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _categoryId;
  String get categoryId => _$this._categoryId;
  set categoryId(String categoryId) => _$this._categoryId = categoryId;

  String _subcategoryId;
  String get subcategoryId => _$this._subcategoryId;
  set subcategoryId(String subcategoryId) =>
      _$this._subcategoryId = subcategoryId;

  String _indicator;
  String get indicator => _$this._indicator;
  set indicator(String indicator) => _$this._indicator = indicator;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  BuiltList _otherImages;
  BuiltList get otherImages => _$this._otherImages;
  set otherImages(BuiltList otherImages) => _$this._otherImages = otherImages;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _dateAdded;
  String get dateAdded => _$this._dateAdded;
  set dateAdded(String dateAdded) => _$this._dateAdded = dateAdded;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  BuiltList _variants;
  BuiltList get variants => _$this._variants;
  set variants(BuiltList variants) => _$this._variants = variants;

  ProductBuilder();

  ProductBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _rowOrder = _$v.rowOrder;
      _name = _$v.name;
      _slug = _$v.slug;
      _categoryId = _$v.categoryId;
      _subcategoryId = _$v.subcategoryId;
      _indicator = _$v.indicator;
      _image = _$v.image;
      _otherImages = _$v.otherImages;
      _description = _$v.description;
      _status = _$v.status;
      _dateAdded = _$v.dateAdded;
      _price = _$v.price;
      _variants = _$v.variants;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Product other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Product;
  }

  @override
  void update(void Function(ProductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Product build() {
    final _$result = _$v ??
        new _$Product._(
            id: id,
            rowOrder: rowOrder,
            name: name,
            slug: slug,
            categoryId: categoryId,
            subcategoryId: subcategoryId,
            indicator: indicator,
            image: image,
            otherImages: otherImages,
            description: description,
            status: status,
            dateAdded: dateAdded,
            price: price,
            variants: variants);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
