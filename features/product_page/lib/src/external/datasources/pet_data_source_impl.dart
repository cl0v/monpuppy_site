import 'package:product_page/src/infra/datasources/pet_data_source.dart';
import 'package:product_page/src/infra/models/pet_model.dart';

class PetDataSourceImpl implements PetDataSource {
  @override
  Future<PetModel> fetch(String path) async {
    return PetModel(
      'xyz',
      path,
      'Rotweiller',
      "https://firebasestorage.googleapis.com/v0/b/monpuppy-f70cd.appspot.com/o/pets%2Fpitbull%2FPITBULL.png?alt=media&token=7d381dfc-8228-43ac-a1dc-6f2e6b57ca86",
      'Os meninos dessa raça são bem humorados, gostam de brincadeiras e seu humor é muito agradável com crianças, perfeito para brincar sem se preocupar.',
      'Pequeno(23-25cm)',
      'Requer cuidados especiais e o nível de atenção dado depende do sexo. Meninos são mais independentes',
    );
  }
}
