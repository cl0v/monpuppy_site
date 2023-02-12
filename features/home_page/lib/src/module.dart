import 'package:flutter_modular/flutter_modular.dart';

import 'domain/usecases/fetch_pet_cards.dart';
import 'domain/usecases/fetch_pet_carroulsel.dart';
import 'external/firebase/firebase_pet_datasource.dart';
import 'infra/repositories/pet_repository_impl.dart';
import 'page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => FetchPetCardsImpl(i())),
        Bind((i) => FetchPetCarroulselImpl(i())),
        Bind((i) => PetRepositoryImpl(i())),
        Bind((i) => FirebasePetDataSource()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
