import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'product.g.dart';

abstract class Product implements Built<Product, ProductBuilder> {
  String get id;

  @nullable
  @BuiltValueField(wireName: 'row_order')
  String get rowOrder;

  String get name;

  @nullable
  @BuiltValueField(serialize: false)
  String get slug;

  @nullable
  @BuiltValueField(wireName: 'category_id',serialize: false)
  String get categoryId;

  @nullable
  @BuiltValueField(wireName: 'subcategory_id',serialize: false)
  String get subcategoryId;

  @nullable
  String get indicator;

  String get image;

  @nullable
  @BuiltValueField(wireName: 'other_images')
  BuiltList get otherImages;

  String get description;

  String get status;

  @nullable
  @BuiltValueField(wireName: 'date_added',serialize: true)
  String get dateAdded;

  String get price;

  @nullable
  @BuiltValueField(serialize:false)
  BuiltList get variants;

  Product._();
  factory Product([void Function(ProductBuilder) updates]) = _$Product;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Product.serializer, this);
  }

  static Product fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Product.serializer, json);
  }

    static List<Product> collectionFromJsonList(List<dynamic> jsonList){
    return jsonList.map((e) => Product.fromJson(e)).toList();
  }

  static Serializer<Product> get serializer => _$productSerializer;
}