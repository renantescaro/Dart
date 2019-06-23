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

List<Map> maps = new List<Map>();

void main(){

  var map1 = new Map();
  var map2 = new Map();

  map1['nome'] = 'Renan';
  map1['sobrenome'] = 'Tescaro';

  map2['nome'] = 'Varg';
  map2['sobrenome'] = 'Vikernes';

  maps.add(map1);
  maps.add(map2);

  print(maps);

  imprimirPessoas();
}

Future<void> imprimirPessoas() async {
  var pessoas = await listarPesoas();

  print(pessoas[0].Nome + ' ' + pessoas[0].Sobrenome);
}

const tempo = Duration(seconds: 2);

Future listarPesoas() => Future.delayed(tempo, () => pessoas());

Future<List<Pessoa>> pessoas() async {

  final List<Map<String, dynamic>> mapsPessoa = maps;

  return List.generate(mapsPessoa.length, (i) {
    return Pessoa(
      nome: mapsPessoa[i]['nome'],
      sobrenome: mapsPessoa[i]['sobrenome'],
    );
  });
}