import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'cart.g.dart';

abstract class Cart implements Built<Cart, CartBuilder> {
  
  String get id;

  Cart._();
  factory Cart([void Function(CartBuilder) updates]) = _$Cart;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Cart.serializer, this);
  }

  static Cart fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Cart.serializer, json);
  }

   static List<Cart> collectionFromJsonList(List<dynamic> jsonList) {
    return jsonList.map((e) => Cart.fromJson(e)).toList();
  }

  static Serializer<Cart> get serializer => _$cartSerializer;
}