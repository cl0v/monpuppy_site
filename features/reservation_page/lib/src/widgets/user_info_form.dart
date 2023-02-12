import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reservation_page/src/widgets/request_button.dart';

class UserInfoFormWidget extends StatelessWidget {
  UserInfoFormWidget({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Quero meu doguinho',
        style: GoogleFonts.raleway(
          fontSize: 48,
        ),
      ),
      Form(
          child: Column(
        children: [
          _TextField('Nome completo', controller: nameController),
          _TextField(
            'Seu melhor e-mail',
            controller: emailController,
          ),
          _TextField(
            'Telefone com DDD',
            controller: phoneController,
          ),
        ],
      )),
      const SizedBox(
        height: 32,
      ),
      const Text(
          'Os contatos são feitos via telefone ou WhatsApp, entre às 08:00 e 18:00. Não pedimos dados bancários ou nenhum dado via telefone, por questões de segurança.'),
      const SizedBox(
        height: 32,
      ),
      const RequestButtonWidget()
    ]);
  }
}

class _TextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const _TextField(
    this.label, {
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
    );
  }
}
