import 'package:DonBenny/models/cart.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'category.dart';
import 'product.dart';
import 'sub_category.dart';
import 'user.dart';

part 'serializers.g.dart';

@SerializersFor([
  Category,SubCategory,User,Product,Cart
])
final Serializers serializers = 
     (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();