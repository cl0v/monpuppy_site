import 'package:flutter_modular/flutter_modular.dart';
import 'package:home_page/home_page.dart';
import 'package:product_page/product_page.dart';
import 'package:reservation_page/reservation_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/pet', module: ProductModule()),
        ModuleRoute('/checkout', module: ReservationPageModule())
      ];
}
