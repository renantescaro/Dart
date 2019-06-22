
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
  
}