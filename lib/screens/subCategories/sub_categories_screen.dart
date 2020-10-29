import 'package:DonBenny/network_utils/api.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../size_config.dart';
import '../../models/category.dart';
import '../../models/sub_category.dart';
import '../../components/category_card.dart';
import '../../constants.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatefulWidget {
  static String routeName = "/subCategories";

  const SubCategoriesScreen({Key key, this.category}) : super(key: key);

  final Category category;

  @override
  _SubCategoriesScreenState createState() => _SubCategoriesScreenState();
}

class _SubCategoriesScreenState extends State<SubCategoriesScreen> {
  List<SubCategory> subCategories = [];

  @override
  void initState() {
    super.initState();
     _getSubCatByCatId(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sub Categorias"),
      ),
      body: Padding(
          padding: EdgeInsets.only(
              top: getProportionateScreenWidth(10),
              left: getProportionateScreenWidth(10),
              right: getProportionateScreenWidth(10)),
          child: SingleChildScrollView(
            child: Wrap(
              spacing: 3.0,
              runSpacing: 2.0,
              children: [
                ...List.generate(
                    subCategories.length,
                    (index) => InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: SizeConfig.screenWidth * 0.30,
                            height: SizeConfig.screenWidth * 0.40,
                            decoration: BoxDecoration(
                                color: kTextColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Container(
                                  width: SizeConfig.screenWidth * 0.25,
                                  height: SizeConfig.screenWidth * 0.25,
                                  child: Container(
                                    child: ClipOval(
                                        child: CachedNetworkImage(
                                      imageUrl:
                                          '${subCategories[index].image}',
                                      imageBuilder:
                                          (context, imageProvider) =>
                                              Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      placeholder: (context, url) =>
                                          Container(
                                        height: 5,
                                        width: 5,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  Colors.blue),
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    )),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "${subCategories[index].name}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: kTextColor),
                                ),
                                Spacer()
                              ],
                            ),
                          ),
                        ))
              ],
            ),
          )),
    );
  }

  void _getSubCatByCatId(Category category) async {
    var data = {'accesskey': kAccessKey, 'category_id': category.id};
    var res =
        await Network().getData('get-subcategories-by-category-id.php', data);
    final List<dynamic> subCategoriesJsonList = res.data['data'];
    final subCategoriesList =
        SubCategory.collectionFromJsonList(subCategoriesJsonList);
    setState(() {
      subCategories = subCategoriesList;
    });
  }
}
