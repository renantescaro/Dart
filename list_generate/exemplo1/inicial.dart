import 'Pessoa.dart';

void main(){

  Pessoa pessoa = new Pessoa();
  Pessoa pessoa2 = new Pessoa();
  Pessoa pessoa3 = new Pessoa();

  List<Pessoa> pessoas = [pessoa, pessoa2, pessoa3];

  pessoa.Nome = 'Renan';
  pessoa.Telefone = '3333-2222';
  pessoa.Idade = 22;

  pessoa2.Nome = 'Amanda';
  pessoa2.Telefone = '3322-1122';
  pessoa2.Idade = 33;

  pessoa3.Nome = 'Sasha';
  pessoa3.Telefone = '6969-1111';
  pessoa3.Idade = 30;

  pessoas.forEach((p) => print(p.Nome));

  // ==================================

  var listaPessoas = new List<Pessoa>.generate(3, (i){
    return Pessoa(
      nome: 'teste'+(i).toString(),
      telefone: '0000'+(i).toString(),
      idade: 0+(i),
    );
  });

  listaPessoas.forEach((p)=>print(p.Nome));
}