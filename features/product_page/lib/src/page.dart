import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:product_page/src/domain/entities/pet.dart';

import 'domain/usecases/fetch_pet.dart';
import 'widgets/about_product.dart';
import 'widgets/product_image_title.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    final fetchPet = Modular.get<FetchPetUseCase>();
    return Scaffold(
      appBar: CustomNavBar(isDark: true,),
      body: FutureBuilder<PetEntity>(
          future: fetchPet(path),
          builder: (context, snapshot) {
            Widget productImageAndTitle;
            Widget aboutProduct;

            if (snapshot.data != null) {
              final PetEntity pet = snapshot.data!;
              productImageAndTitle = ProductImageAndTitleWidget(
                title: pet.name,
                imageUrl: pet.imageUrl,
              );
              aboutProduct = AboutProductWidget(
                id: pet.id,
                porte: pet.cares,
                cares: pet.cares,
                description: pet.description,
              );
            } else {
              productImageAndTitle = ProductImageAndTitleWidget.loading();
              aboutProduct = AboutProductWidget.loading();
            }

            return Row(
              children: [
                Flexible(flex: 10, child: productImageAndTitle),
                Flexible(flex: 8, child: aboutProduct),
              ],
            );
          }),
    );
  }
}
