import 'Pessoa.dart';

void main(){

  /*
  Pessoa pessoa = new Pessoa();
  Pessoa pessoa2 = new Pessoa();
  Pessoa pessoa3 = new Pessoa();

  List<Pessoa> pessoas = [pessoa, pessoa2, pessoa3];

  pessoa.Nome = 'Renan Tescaro';
  pessoa.Telefone = '996863058';
  pessoa.Idade = 22;

  pessoa2.Nome = 'Bruna Tescaro';
  pessoa2.Telefone = '991389722';
  pessoa2.Idade = 33;

  pessoa3.Nome = 'Francisco Saes';
  pessoa3.Telefone = '991099711';
  pessoa3.Idade = 72;

  pessoas.forEach((p) => print(p.Nome));

  */
  var listaPessoas = new List<Pessoa>.generate(3, (i){
    return Pessoa(
      nome: 'teste'+(i).toString(),
      telefone: '0000'+(i).toString(),
      idade: 0+(i),
    );
  });

  listaPessoas.forEach((p)=>print(p.Nome));
}