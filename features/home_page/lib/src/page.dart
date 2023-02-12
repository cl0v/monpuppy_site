import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_page/src/domain/usecases/fetch_pet_cards.dart';
import 'package:home_page/src/domain/usecases/fetch_pet_carroulsel.dart';

import 'domain/entities/pet_entity.dart';
import 'widgets/pet_banner_carroulsel.dart';
import 'widgets/pet_grid.dart';
import 'widgets/know_more_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNavBar(),
      body: ResponsiveLayout(
        smallScreen: const Center(child: Text('Acesse nosso instagram para comprar pelo celular.'),),
        largeScreen: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  _Body({
    Key? key,
  }) : super(key: key);

  final carroulselUseCase = Modular.get<FetchPetCarroulsel>();
  final cardsUseCase = Modular.get<FetchPetCards>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        FutureBuilder<List<PetEntity>>(
            future: carroulselUseCase(),
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data != null) {
                return PetBannerCarrouselWidget(
                  petList: snapshot.data!,
                );
              }
              return PetBannerCarrouselWidget.loading();
            }),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 64.0),
          child: Text(
            'Outras raças',
            style: GoogleFonts.raleway(
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 140 - 16),
          child: FutureBuilder<List<PetEntity>>(
              future: cardsUseCase(),
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data != null) {
                  return PetGridWidget(
                    pets: snapshot.data!,
                  );
                }
                return PetGridWidget.loading();
              }),
        ),
        const SizedBox(
          height: 85,
        ),
        const KnowMoreButton(),
        const SizedBox(
          height: 150,
        ),
      ],
    ));
  }
}
