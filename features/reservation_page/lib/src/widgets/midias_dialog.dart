import 'package:flutter/material.dart';

class MidiasDialogModal extends StatelessWidget {
  static showModal(BuildContext context) =>
      showDialog(context: context, builder: (context) => MidiasDialogModal());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 300,
        width: 250,
        margin: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        child: Column(
          children: [
            Flexible(
              child: ElevatedButton.icon(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xFF05D89F),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                ),
                icon: const Icon(Icons.circle),
                label: const Text('instagram'),
              ),
            ),
            Flexible(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('instagram'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
