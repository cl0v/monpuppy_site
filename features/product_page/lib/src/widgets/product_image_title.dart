import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductImageAndTitleWidget extends StatelessWidget {
  const ProductImageAndTitleWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  final String imageUrl;
  final String title;

  static loading() {
    return const _LoadingState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(child: Image.network(imageUrl)),
      Align(
          alignment: const Alignment(-0.9, 0.9),
          child: Text(
            title,
            style: GoogleFonts.raleway(fontSize: 48),
          )),
      // Align(
      //   alignment: Alignment.centerRight,
      //   child: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
      // )
    ]);
  }
}

//TODO: Implement
class _LoadingState extends StatelessWidget {
  const _LoadingState();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
