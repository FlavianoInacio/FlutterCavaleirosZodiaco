import 'package:flutter/material.dart';
import 'package:flutter_cavaleiros_zodiaco/cavaleiro_detalhe.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/img.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/tipos_cavaleiros.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/ultil.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/versao_anime.dart';
import 'instancias/Cavaleiros.dart';

class ListaCavaleirosPage extends StatefulWidget {

  TiposCavaleiros tiposCavaleiros;
  versaoAnime anime;

  ListaCavaleirosPage(this.tiposCavaleiros,this.anime);

  @override
  _ListaCavaleirosPageState createState() => _ListaCavaleirosPageState();
}

class _ListaCavaleirosPageState extends State<ListaCavaleirosPage> {
  bool _gridView = false;
  @override
  Widget build(BuildContext context) {
    String titulo = _tituloAppBar();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(titulo),
        actions: [
          IconButton(icon:Icon(Icons.list), onPressed: (){
            setState(() {
              _gridView = false;
            });
          }),
          IconButton(icon:Icon(Icons.grid_on), onPressed: (){
            setState(() {
              _gridView = true;
            });
          })
        ],
      ),
      body: _body(),
    );
  }

  String _tituloAppBar() {
    String titulo = "";
    switch(widget.tiposCavaleiros){
      case TiposCavaleiros.BRONZE:
        titulo = "Cavaleiros de Bronze";
        break;
      case TiposCavaleiros.PRATA:
        titulo = "Cavaleiros de Prata";
        break;
      case TiposCavaleiros.OURO:
        titulo = "Cavaleiros de Ouro";
        break;
      case TiposCavaleiros.HADES:
        titulo = "Cavaleiros de Hades";
        break;
      case TiposCavaleiros.POSEIDON:
        titulo = "Cavaleiros de Poseidon";
        break;
      case TiposCavaleiros.DEUSES:
        titulo = "Cavaleiros de deuses";
        break;
    }
    return titulo;
  }

  _body(){
    List<Cavaleiros> cavaleiros = listaCavalaerios(widget.tiposCavaleiros,widget.anime);
    if(_gridView){
      return GridView.builder(
          itemCount: cavaleiros.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index){
            return _viewItem(cavaleiros, index);
          });
    }
    else{
      return ListView.builder(
          itemCount: cavaleiros.length,
          itemExtent: 350,
          itemBuilder: (context,index){
            return _viewItem(cavaleiros, index);
          });
    }
  }

  _viewItem(List<Cavaleiros> cavaleiros, int index) {
     Cavaleiros cavaleiro = cavaleiros[index];
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return CavaleiroDetalhe(cavaleiro);
        }));
      },
      child: Stack(children: [
        img(cavaleiro.foto,BoxFit.contain),
        Container(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(16)
            ),
            child: Text(cavaleiro.nome + " de "+ cavaleiro.armadura,style: TextStyle(
              fontSize: 20,
              color: Colors.white
            ),),
          ),
        ),
      ],),
    );
  }
}
