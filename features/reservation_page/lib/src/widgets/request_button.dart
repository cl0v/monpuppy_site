import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reservation_page/src/widgets/midias_dialog.dart';

class RequestButtonWidget extends StatelessWidget {
  const RequestButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            MidiasDialogModal.showModal(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF05D89F),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
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
        ),
      ],
    );
  }
}
