import 'package:flutter_modular/flutter_modular.dart';
import 'package:product_page/src/external/datasources/pet_data_source_impl.dart';
import 'package:product_page/src/infra/repositories/pet_repository_impl.dart';
import 'domain/usecases/fetch_pet.dart';
import 'page.dart';

class ProductModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => FetchPetUseCaseImpl(i())),
        Bind((i) => PetRepositoryImpl(i())),
        Bind((i) => PetDataSourceImpl()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/:path',
            child: (context, args) => ProductPage(path: args.params['path'])),
      ];
}
