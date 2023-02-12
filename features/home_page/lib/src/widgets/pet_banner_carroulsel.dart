import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:home_page/src/widgets/pet_banner_carroulsel_controller.dart';

import '../domain/entities/pet_entity.dart';

// TODO: Esse widget nao serve mais quando o tamanho da tela ta proximo da metade

class PetBannerCarrouselWidget extends StatelessWidget {
  const PetBannerCarrouselWidget({
    super.key,
    required this.petList,
  });

  final List<PetEntity> petList;

  static loading() {
    return const _LoadingStateWidget();
  }

  @override
  Widget build(BuildContext context) {
    final controller = PetBannerCarroulselController(maxIndex: petList.length);
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            // aspectRatio: 1920 / 980,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            onPageChanged: (index, reason) => controller.onGoToPage(index),
          ),
          items: petList
              .map((pet) => PetBannerWidget(
                    title: pet.title,
                    colorHex: pet.colorHex,
                    imageUrl: pet.imageUrl,
                    onBannerPressed: () =>
                        Modular.to.pushNamed('/pet/${pet.path}'),
                  ))
              .toList(),
        ),
        Positioned.fill(
          child: Align(
            alignment: const Alignment(0, 0.9),
            child: Observer(
              builder: (context) => CarouselIndicator(
                count: petList.length,
                index: controller.imageIndex,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PetBannerWidget extends StatefulWidget {
  const PetBannerWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.colorHex,
    required this.onBannerPressed,
  });

  final String imageUrl;
  final String title;
  final int colorHex;
  final VoidCallback onBannerPressed;

  @override
  State<PetBannerWidget> createState() => _PetBannerWidgetState();
}

class _PetBannerWidgetState extends State<PetBannerWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onBannerPressed,
      child: Container(
          color: Color(widget.colorHex),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _TitleAndSubtitleWithButtonWidget(
                  title: widget.title,
                  onBtnTap: widget.onBannerPressed,
                ),
                // A imagem arrasta animando a posicao e opacidade
                Padding(
                  padding: const EdgeInsets.only(right: 22.0),
                  child: Animate(effects:const  [
                     FadeEffect(duration: Duration(milliseconds: 800)),
                     MoveEffect(
                      duration: Duration(milliseconds: 800),
                      begin: Offset(-100, 0),
                    )
                  ], child: Image.asset(widget.imageUrl)),
                ),
              ],
            ),
          )),
    );
  }
}

class _TitleAndSubtitleWithButtonWidget extends StatelessWidget {
  const _TitleAndSubtitleWithButtonWidget({
    required this.onBtnTap,
    required this.title,
  });

  final String title;
  final VoidCallback onBtnTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.raleway(
              fontSize: 64,
              fontWeight: FontWeight.bold,
              color: const Color(
                0xFF000000,
              ),
            ),
          ),
          Text(
            "Filhotes de até 45 dias*",
            style: GoogleFonts.raleway(
              fontSize: 24,
              color: const Color(
                0xFF000000,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed: onBtnTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0)),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              child: const Text(
                'EU QUERO',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _LoadingStateWidget extends StatelessWidget {
  const _LoadingStateWidget();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
    aspectRatio: 1920 / 980,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
        ),
      ),
    );
  }
}
