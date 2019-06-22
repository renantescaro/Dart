
class Fruta{
  String nome;
  String gosto;
  int nota;
}

void main(){

  List<Fruta> frutas = new List<Fruta>();

  Fruta fruta = new Fruta();
  Fruta fruta2 = new Fruta();
  Fruta fruta3 = new Fruta();

  fruta.nome = 'Banana';
  fruta.gosto = 'doce';
  fruta.nota = 6;

  fruta2.nome = 'Melancia';
  fruta2.gosto = 'doce';
  fruta2.nota = 4;

  fruta3.nome = 'Abacaxi';
  fruta3.gosto = 'doce';
  fruta3.nota = 8;

  frutas.add(fruta);
  frutas.add(fruta2);
  frutas.add(fruta3);

  var mapaFrutas = frutas.map((f) => 'Eu gosto de ' + f.nome).toList();
  print(mapaFrutas);
}

