import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class KnowMoreButton extends StatelessWidget {
  const KnowMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
              onPressed: () async {
                //TODO: TASK 1: Substituir por como funciona
                final Uri url = Uri.parse(
                    'https://www.instagram.com/stories/highlights/17949011359873105/');
                if (!await launchUrl(url)) {
                  throw 'Could not launch $url';
                }
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                    color: Colors.black, width: 1, style: BorderStyle.solid),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                child: const Text(
                  'Saiba Mais',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
  }
}