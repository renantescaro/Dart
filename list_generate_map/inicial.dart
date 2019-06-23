
class Animal{
  String nome;
  String especie;
  int idade;

  String get Nome => this.nome;
  set Nome(String nome) => this.nome = nome;

  String get Especie => this.especie;
  set Especie(String especie) => this.especie = especie;

  int get Idade => this.idade;
  set Idade(int idade) => this.idade = idade;

  Animal({this.nome, this.especie, this.idade});
}

void main(){
  var map1 = new Map();
  var map2 = new Map();
  var map3 = new Map();

  List<Map> maps = new List<Map>();

  map1['nome'] = 'Vikernes';
  map1['especie'] = 'Cachorro';
  map1['idade'] = 5;

  map2['nome'] = 'Sasha';
  map2['especie'] = 'Gato';
  map2['idade'] = 2;

  map3['nome'] = 'Frufru';
  map3['especie'] = 'Galinha';
  map3['idade'] = 1;

  maps.add(map1);
  maps.add(map2);
  maps.add(map3);

  maps.forEach((m) => print(m));

  var listaAnimais = List.generate(maps.length, (i)
  {
    return Animal(
      nome: maps[i]['nome'],
      especie: maps[i]['especie'],
      idade: maps[i]['idade'],
    );
  });

  listaAnimais.forEach((l) => print(l.Nome));
}