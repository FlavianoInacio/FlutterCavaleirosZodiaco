

import 'package:flutter/material.dart';
import 'package:flutter_cavaleiros_zodiaco/lista_cavaleiro.dart';
import 'package:flutter_cavaleiros_zodiaco/button.dart';
import 'package:flutter_cavaleiros_zodiaco/drawer.dart';
import 'package:flutter_cavaleiros_zodiaco/navegacao_page.dart';
import 'package:flutter_cavaleiros_zodiaco/prata_page.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/img.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/tipos_cavaleiros.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/versao_anime.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Cavaleiros do Zodiaco"),
            bottom: TabBar(
              tabs: [
                Tab(text: "Clássico"),
                Tab(text: "The Lost Canvas"),
              ],
            ),
        ),
        drawer: DrawerPage(),
        body: TabBarView(children: [
          _body(context,versaoAnime.CLASSICO),
          _body(context,versaoAnime.LOSTCANVAS),
        ],),
      ),
    );
  }
  _body(BuildContext context,versaoAnime versao) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
        _logo(versao),
         _pageview(versao),
         _buttons(context,versao)
       ],
      ),
    );
  }

  Container _logo(versaoAnime versao) {
    String urlLogo;
    if(versaoAnime.CLASSICO==versao){
      urlLogo="assets/images/logoclassico.png";
    }
    else if(versaoAnime.LOSTCANVAS==versao){
      urlLogo="assets/images/logolost.png";
    }
    return Container(
        margin: EdgeInsets.only(bottom:5),
        height: 50,
        width: 200,
        child: Image.asset(urlLogo,
        fit: BoxFit.fill,),
      );
  }

  Container _pageview(versaoAnime versao) {
    List<Widget> children;
    if(versaoAnime.CLASSICO==versao){
      children= [
        img("assets/images/cavaleiros1.png",BoxFit.fill),
        img("assets/images/cavaleiros2.png",BoxFit.fill),
        img("assets/images/cavaleiros3.png",BoxFit.fill)
      ];
    }
    else if(versaoAnime.LOSTCANVAS==versao){
      children= [
        img("assets/images/lost.png",BoxFit.fill),
        img("assets/images/lost1.png",BoxFit.fill),
        img("assets/images/lost2.png",BoxFit.cover)
      ];
    }
    return Container(
         height: 270,
         color: Colors.black,
         child: PageView(
           children: children,
         ),
       );
  }

    _buttons(BuildContext context,versaoAnime versao) {

    return Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               _button(context,"Bronze",Colors.brown,Colors.white,ListaCavaleirosPage(TiposCavaleiros.BRONZE,versao)),
               _button(context,"Prata",Colors.white60,Colors.black,ListaCavaleirosPage(TiposCavaleiros.PRATA,versao)),
               _button(context,"Ouro",Colors.amber,Colors.white,ListaCavaleirosPage(TiposCavaleiros.OURO,versao))
             ],
           ),
         ],
       );
  }
  //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
  //return NavegacaoPage();
  _button(BuildContext context,String textoBotao,colorButton,colorFont,page){
   return Button(colorButton, colorFont, textoBotao, page);
  }


  _text() {
     return Text(
        "Cavaleiros do Zodiaco",
        style: TextStyle(
            fontSize: 30,
            color: Colors.blue
        ),
      );
   }
}