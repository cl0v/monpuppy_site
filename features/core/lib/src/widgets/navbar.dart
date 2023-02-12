import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomNavBar extends StatelessWidget implements PreferredSizeWidget {
  final int? defaultIndex;
  final bool isDark;

  CustomNavBar({
    super.key,
    this.defaultIndex = -1,
    this.isDark = false
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  final navLinks = [
    "Início",
    "Como Funciona",
    "Contato",
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: isDark ? Colors.black : Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: TextButton(
          onPressed: () {
            if (defaultIndex == 0) {
              return;
            }
            Modular.to.navigate('/');
          },
          child: Text(
            'Monpuppy',
            style: GoogleFonts.raleway(
                fontWeight: FontWeight.bold, fontSize: 32, color: isDark ? Colors.white :Colors.black),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            if (defaultIndex == 0) {
              return;
            }
            Modular.to.navigate('/');
          },
          child: _TabsTitle(
            'Inicio',
            isActive: defaultIndex == 0,
          ),
        ),
        TextButton(
          onPressed: () async {
            if (defaultIndex == 1) {
              return;
            }
            final Uri url = Uri.parse(
                'https://www.instagram.com/stories/highlights/17949011359873105/');
            if (!await launchUrl(url)) {
              throw 'Could not launch $url';
            }
          },
          child: _TabsTitle(
            'Como funciona',
            isActive: defaultIndex == 1,
          ),
        ),
        TextButton(
          onPressed: () async {
            if (defaultIndex == 2) {
              return;
            }
            final Uri url = Uri.parse('https://wa.me/+5533998525199');
            if (!await launchUrl(url)) {
              throw 'Could not launch $url';
            }
          },
          child: _TabsTitle(
            'Contato',
            isActive: defaultIndex == 2,
          ),
        ),
        const SizedBox(
          width: 32,
        ),
      ],
    );
  }
}

class _TabsTitle extends StatelessWidget {
  const _TabsTitle(this.text, {this.isActive = false});

  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
        color: isActive ? Colors.black : const Color.fromARGB(255, 129, 129, 129),
      ),
    );
  }
}
