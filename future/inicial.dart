import 'dart:async';

import 'dart:ffi';

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
  List<Pessoa> pe = new List<Pessoa>();

  imprimirPessoas().then((dynamic resultado) => print(resultado[0].Nome));
}

Future<dynamic> imprimirPessoas(){

  var completo = new Completer();

  completo.complete(listarPesoas());

  return completo.future;
}

const tempo = Duration(seconds: 1);

Future listarPesoas() => Future.delayed(tempo, () => listaPessoas);

var listaPessoas = List<Pessoa>.generate(3, (i){
  return Pessoa(
    nome: 'nome_' + (i).toString(),
    sobrenome: 'sobrenome_' + (i).toString(),
  );
});