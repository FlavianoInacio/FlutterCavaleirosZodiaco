
import 'package:flutter/material.dart';
import 'package:flutter_cavaleiros_zodiaco/lista_cavaleiro.dart';
import 'package:flutter_cavaleiros_zodiaco/pagina_pessoal.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/img.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/tipos_cavaleiros.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/versao_anime.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Flaviano Inácio"),
                accountEmail: Text("flaviano.s.inacio@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/perfil.png"),),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Sobre o Desenvolvedor",style: TextStyle(color: Colors.black),),
              subtitle: Text("Informações sobre o desenvolvimento do aplicativo..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                _navigator(context,PaginaPessoal());
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Versão do aplicativo",style: TextStyle(color: Colors.blue),),
              subtitle: Text("Versão de desenvolviento do aplicativo"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Fluttertoast.showToast(
                    msg: "Versão 1.0",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black26,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            )
          ],
        ),

      ),
    );
  }

  Future _navigator(BuildContext context,page) {
    return Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return page;
            }));
  }
}
