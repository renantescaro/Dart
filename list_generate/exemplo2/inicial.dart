
void main(){

  var lista = List<Carro>.generate(3, (i){
    return Carro(
      nome: (i).toString()+'_nome',
      cor: (i).toString()+'_cor',
    );
  });

  lista.forEach((c) => print((c).nome));
}

class Carro{
  String nome;
  String cor;

  String get Nome => this.nome;
  set Nome(String nome) => this.nome = nome;

  String get Cor => this.cor;
  set Cor(String cor) => this.cor = cor;

  Carro({this.nome, this.cor});
}