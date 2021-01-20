
import 'package:flutter_cavaleiros_zodiaco/instancias/Cavaleiros.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/tipos_cavaleiros.dart';
import 'package:flutter_cavaleiros_zodiaco/utils/versao_anime.dart';

listaCavalaerios(TiposCavaleiros tiposCavaleiros, versaoAnime anime){
  List<Cavaleiros> cavaleiros = null;
  if(versaoAnime.CLASSICO == anime) {
    if (tiposCavaleiros == TiposCavaleiros.BRONZE) {
      cavaleiros = [
        Cavaleiros("Seya", "assets/images/seya.png", "Pegasus"),
        Cavaleiros("shiryu", "assets/images/dragao.png", "Dragão"),
        Cavaleiros("Ichi", "assets/images/hidra.png", "Hidra"),
        Cavaleiros("Yoga", "assets/images/yoga.png", "Cisne"),

        Cavaleiros("Ikki", "assets/images/iki.png", "Fenix"),
        Cavaleiros("Shun", "assets/images/shun.png", "Andromeda"),
        Cavaleiros("Ban", "assets/images/leao.png", "Leão Menor"),
        Cavaleiros("Jabu", "assets/images/jabu.png", "Unicórnio"),
        Cavaleiros("Geki", "assets/images/urso.png", "Urso"),

        Cavaleiros("June", "assets/images/june.png", "Camaleão"),
      ];
    }
    else if (tiposCavaleiros == TiposCavaleiros.PRATA) {
      cavaleiros = [
        Cavaleiros("Albion", "assets/images/albion.png", "Cefeu"),
        Cavaleiros("Algol", "assets/images/algol.png", "Perseu"),
        Cavaleiros("Asterion", "assets/images/asuterion.png", "Cães de Caça"),
        Cavaleiros("Babel", "assets/images/babel.png", "Centauro"),

        Cavaleiros("Capella", "assets/images/capela.png", "Auriga"),
        Cavaleiros("Dante", "assets/images/dante.png", "Cérbero"),
        Cavaleiros("Dio", "assets/images/dio.png", "Mosca"),
        Cavaleiros("Algethi", "assets/images/hercules.png", "Hércules"),
        Cavaleiros("Jamian", "assets/images/jamian.png", "Corvo"),
        Cavaleiros("Orfeu", "assets/images/lira.png", "Lira"),
        Cavaleiros("Ágora", "assets/images/lotus.png", "Lotus"),
        Cavaleiros("Marin", "assets/images/marin.png", "Águia"),
        Cavaleiros("Misty", "assets/images/misty.png", "Largarto"),
        Cavaleiros("Mouses", "assets/images/mozesu.png", "Baleia"),
        Cavaleiros("Tremy", "assets/images/sagita.png", "Flecha"),
        Cavaleiros("Shina", "assets/images/shaina.png", "Cobra"),
        Cavaleiros("Shiva", "assets/images/shiva.png", "Pavão"),
        Cavaleiros("Sirius", "assets/images/sirius.png", "Cão Maior"),
        Cavaleiros("Aranche", "assets/images/tarantula.png", "Tarântula"),

      ];
    }
    else if (tiposCavaleiros == TiposCavaleiros.OURO) {
      cavaleiros = [
        Cavaleiros("Mu", "assets/images/mu.png", "Áries"),
        Cavaleiros("Aldebaran", "assets/images/aldebaran.png", "Touro"),
        Cavaleiros("Saga", "assets/images/saga.png", "Gêmeos"),
        Cavaleiros("Máscara da Morte", "assets/images/mascara.png", "Câncer"),
        Cavaleiros("Aiolia", "assets/images/aioria.png", "Leão"),
        Cavaleiros("Shaka", "assets/images/shaka.png", "Virgem"),
        Cavaleiros("Dohko", "assets/images/dohko.png", "Libra"),
        Cavaleiros("Milo", "assets/images/milo.png", "Escorpião"),
        Cavaleiros("Aiolos", "assets/images/aiolos.png", "Sargitário"),
        Cavaleiros("Shura", "assets/images/shura.png", "Capricórnio"),
        Cavaleiros("Camus", "assets/images/camus.png", "Aquário"),
        Cavaleiros("Afrodite", "assets/images/peixes.png", "Peixes"),
      ];
    }
  }
    else if(versaoAnime.LOSTCANVAS == anime){
      if(TiposCavaleiros.BRONZE == tiposCavaleiros){
        cavaleiros =  [
          Cavaleiros("Tenma","assets/images/tema.png","Pegasus"),
          Cavaleiros("Yato","assets/images/unicornio.png","Unicórnio"),
          Cavaleiros("S/nome","assets/images/boieiro.png","Boieiro"),
          Cavaleiros("S/nome","assets/images/cassiopeia.png","Cassiopéia"),
          Cavaleiros("S/nome","assets/images/eridano.png","Eridiano"),
          Cavaleiros("S/nome","assets/images/indio.png","Índio"),
          Cavaleiros("Bleriot","assets/images/leao1.png","Leão Menor"),
          Cavaleiros("S/nome","assets/images/peixevoador.png","Peixe Voador"),
          Cavaleiros("Rusk","assets/images/rusk.png","Bússola"),
        ];
      }
      else if (tiposCavaleiros == TiposCavaleiros.PRATA) {
        cavaleiros =  [
          Cavaleiros("Hakurei","assets/images/altar.png","Altar"),
          Cavaleiros("S/nome","assets/images/auriga.png","Auriga"),
          Cavaleiros("S/nome","assets/images/baleia2.png","Baleia"),
          Cavaleiros("S/nome","assets/images/cao_maior.png","Cão maior"),
          Cavaleiros("S/nome","assets/images/cerbero2.png","Cérbero"),
          Cavaleiros("Yuzuriha","assets/images/grou.png","Grou"),
          Cavaleiros("S/nome","assets/images/lagarto2.png","Lagarto"),
          Cavaleiros("S/nome","assets/images/mosca2.png","Mosca"),
          Cavaleiros("Lacaille","assets/images/popa.png","Popa"),
          Cavaleiros("S/nome","assets/images/sagita2.png","Sagita"),
          Cavaleiros("Tsubaki","assets/images/vela.png","Vela"),
        ];
      }
      else if (tiposCavaleiros == TiposCavaleiros.OURO) {
        cavaleiros = [
          Cavaleiros("Shion", "assets/images/shion.png", "Áries"),
          Cavaleiros("Hasgard", "assets/images/touro2.png", "Touro"),
          Cavaleiros("Defteros", "assets/images/gemeos2.png", "Gêmeos"),
          Cavaleiros("Manigold", "assets/images/cancer2.png", "Câncer"),
          Cavaleiros("Regulus", "assets/images/leao2.png", "Leão"),
          Cavaleiros("Asmita", "assets/images/virgem2.png", "Virgem"),
          Cavaleiros("Dohko", "assets/images/dohko.png", "Libra"),
          Cavaleiros("Kardia", "assets/images/milo2.png", "Escorpião"),
          Cavaleiros("Sísifo", "assets/images/sargitario.png", "Sargitário"),
          Cavaleiros("El Cid", "assets/images/shura2.png", "Capricórnio"),
          Cavaleiros("Dégel", "assets/images/aquario2.png", "Aquário"),
          Cavaleiros("Albafica", "assets/images/peixes2.png", "Peixes"),
        ];
      }
    }
  return cavaleiros;
}