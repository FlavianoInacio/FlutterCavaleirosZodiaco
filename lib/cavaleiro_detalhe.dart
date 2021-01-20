

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cavaleiros_zodiaco/instancias/Cavaleiros.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/img.dart';

class CavaleiroDetalhe extends StatelessWidget {
  final Cavaleiros cavaleiro;
  CavaleiroDetalhe(this.cavaleiro);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text(cavaleiro.nome + " de " + cavaleiro.armadura),
    ),
    body: _body(),
    );
  }

  _body(){
    return Container(
        child: SizedBox.expand(
            child: Image.asset(cavaleiro.foto,
              fit: BoxFit.fill,
            )
        ),
    );
  }
}
