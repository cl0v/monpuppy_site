import 'package:flutter_modular/flutter_modular.dart';
import 'package:monpuppy_site/app_module.dart';
import 'package:monpuppy_site/app_widget.dart';
import 'package:flutter/material.dart';

//TODO: Corrigir link do "como funciona", redirecionar para o como funciona do instagram. 

/*
widgets uteis FractionallySizedBox 
*/

void main() => runApp(
      ModularApp(
        module: AppModule(),
        child: const AppWidget(),
      ),
    );
