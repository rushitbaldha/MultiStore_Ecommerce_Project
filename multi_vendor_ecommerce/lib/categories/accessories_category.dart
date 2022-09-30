import 'package:flutter/material.dart';
import 'package:multi_vendor_ecommerce/utilities/categ_list.dart';
import 'package:multi_vendor_ecommerce/widgets/category_widgets.dart';

class AccessoriesCategory extends StatelessWidget {
  const AccessoriesCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.80,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategoryHeaderLabel(headerLabel: 'Accessories'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 70,
                      crossAxisSpacing: 15,
                      children: List.generate(accessories.length, (index) {
                        return SubCategoryTile(
                          mainCategoryName: 'accessories',
                          subCategoryName: accessories[index],
                          assetImage: 'images/accessories/accessories$index.jpg',
                          subcategoryLabel: accessories[index],
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: SliderBar(mainCategoryName: 'accessories'),
          ),
        ],
      ),
    );
  }
}