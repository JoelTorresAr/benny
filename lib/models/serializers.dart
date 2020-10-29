import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'category.dart';
import 'sub_category.dart';

part 'serializers.g.dart';

@SerializersFor([
  Category,SubCategory
])
final Serializers serializers = 
     (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();