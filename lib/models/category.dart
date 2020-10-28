import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'category.g.dart';

abstract class Category implements Built<Category, CategoryBuilder> {

  String get id;

  @nullable
  int get status;

  String get name;

  String get subtitle;

  String get image;

  Category._();
  factory Category([void Function(CategoryBuilder) updates]) = _$Category;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Category.serializer, this);
  }

  static Category fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Category.serializer, json);
  }

  static List<Category> collectionFromJsonList(List<dynamic> jsonList) {
    return jsonList.map((e) => Category.fromJson(e)).toList();
  }

  static Serializer<Category> get serializer => _$categorySerializer;
}


