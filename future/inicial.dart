import 'dart:async';

class Pessoa{
  String nome;
  String sobrenome;

  String get Nome => this.nome;
  set Nome(String nome) => this.nome = nome;

  String get Sobrenome => this.sobrenome;
  set Sobrenome(String sobrenome) => this.sobrenome = sobrenome;

  Pessoa({this.nome, this.sobrenome});
}

main() {
  imprimirPessoas();
}

Future<void> imprimirPessoas() async {
  var pessoas = await listarPesoas();
  print(pessoas[0].Nome + ' ' + pessoas[0].Sobrenome);
}

const tempo = Duration(seconds: 1);

var listaPessoas = List<Pessoa>.generate(3, (i){
  return Pessoa(
    nome: 'nome_' + (i).toString(),
    sobrenome: 'sobrenome_' + (i).toString(),
  );
});

Future listarPesoas() => Future.delayed(tempo, () => listaPessoas);