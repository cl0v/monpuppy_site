import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import '../domain/entities/pet_entity.dart';

class PetGridWidget extends StatelessWidget {
  const PetGridWidget({super.key, required this.pets});
  final List<PetEntity> pets;

  static loading() {
    return const _LoadingStateWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: (536 / 640),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      crossAxisCount: 3,
      shrinkWrap: true,
      children: pets
          .map((pet) => PetCardWidget(
                pet: pet,
              ))
          .toList(),
    );
  }
}

class PetCardWidget extends StatelessWidget {
  const PetCardWidget({
    Key? key,
    required this.pet,
  }) : super(key: key);

  final PetEntity pet;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Modular.to.pushNamed('/pet/${pet.path}'),
      child: Container(
        height: 640,
        width: 536,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color(pet.colorHex),
          image: DecorationImage(
            image: NetworkImage(
              pet.imageUrl,
            ),
            scale: (1920 / MediaQuery.of(context).size.width) * 1.5,
          ),
        ),
        child: Align(
          alignment: const Alignment(0, 0.83),
          child: Text(
            pet.title,
            style: GoogleFonts.raleway(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class _LoadingStateWidget extends StatelessWidget {
  const _LoadingStateWidget();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: (536 / 640),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      crossAxisCount: 3,
      shrinkWrap: true,
      children: List.generate(
        3,
        (idx) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.black.withOpacity(0.04),
          ),
        ),
      ),
    );
    
  }
}
