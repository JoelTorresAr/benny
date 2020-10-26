import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                  imageUrl: '${category.image}',
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => Container(
                    height: 5,
                    width: 5,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                )),
              ),
            ),
            Spacer(),
            Text(
              "${category.name}",
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextColor),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
