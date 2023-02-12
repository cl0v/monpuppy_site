import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutProductWidget extends StatelessWidget {
  const AboutProductWidget({
    Key? key,
    required this.description,
    required this.porte,
    required this.cares,
    required this.id,
  }) : super(key: key);

  final String description;
  final String porte;
  final String cares;
  final String id;

  static loading() {
    return const _LoadingState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 50, right: 50),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sobre',
              style: GoogleFonts.robotoSlab(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              description,
              style: GoogleFonts.raleway(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              'Informações Essenciais',
              style: GoogleFonts.robotoSlab(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 32,
            ),
            infoItem('Porte', itemDescription(porte)),
            const SizedBox(
              height: 16,
            ),
            infoItem('Comportamento', itemDescription(cares)),
            const SizedBox(
              height: 16,
            ),
            infoItem(
                'Localidades', itemDescription('Todas as capitais brasileiras*')),
            const SizedBox(
              height: 56,
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.navigate(
                  '/checkout',
                  arguments: {
                    'id': id,
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF05D89F),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0)),
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 64),
                child: Text(
                  'Reservar',
                  style: GoogleFonts.raleway(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget itemDescription(String txt) {
  return SizedBox(
    width: 330,
    child: Text(
      txt,
      style: GoogleFonts.raleway(fontSize: 16),
    ),
  );
}

Widget infoItem(String title, Widget desc) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          desc
        ],
      ),
      const Divider(
        thickness: 1,
      )
    ],
  );
}

//TODO: Implement
class _LoadingState extends StatelessWidget {
  const _LoadingState();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
