import 'package:flutter_modular/flutter_modular.dart';
import 'package:reservation_page/src/page.dart';

class ReservationPageModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ReservationPage(),
        ),
      ];
}
