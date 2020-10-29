import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'sub_category.g.dart';

abstract class SubCategory implements Built<SubCategory, SubCategoryBuilder> {
  String get id;

  @nullable
  @BuiltValueField(wireName: 'category_id')
  String get categoryId;

  String get name;

  @nullable
  @BuiltValueField(serialize: false)
  String get slug;

  String get subtitle;

  String get image;

  SubCategory._();
  factory SubCategory([void Function(SubCategoryBuilder) updates]) =
      _$SubCategory;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(SubCategory.serializer, this);
  }

  static SubCategory fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(SubCategory.serializer, json);
  }

  static List<SubCategory> collectionFromJsonList(List<dynamic> jsonList){
    return jsonList.map((e) => SubCategory.fromJson(e)).toList();
  }

  static Serializer<SubCategory> get serializer => _$subCategorySerializer;
}
