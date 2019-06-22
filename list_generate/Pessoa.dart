
class Pessoa{

  String nome;
  String telefone;
  int idade;

  set Nome(String nome) => this.nome = nome;
  String get Nome => this.nome;

  set Telefone(String telefone) => this.telefone = telefone;
  String get Telefone => this.telefone;

  set Idade(int idade) => this.idade = idade;
  int get Idade => this.idade;

  Pessoa({this.nome, this.telefone, this.idade});
}

