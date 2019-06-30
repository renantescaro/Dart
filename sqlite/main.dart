import 'Pessoa.dart';
import 'PessoaDao.dart';


void main(){
  Pessoa pessoa1 = new Pessoa();
  Pessoa pessoa2 = new Pessoa();
  PessoaDao pessoaDao = new PessoaDao();

  pessoa1.nome = 'Renan';
  pessoa1.sobrenome = 'Tescaro';
  pessoa1.idade = 23;

  pessoaDao.insert(pessoa1);

  pessoa2.nome = 'Sasha';
  pessoa2.sobrenome = 'Grey';
  pessoa2.idade = 31;

  pessoaDao.insert(pessoa2);

  pessoaDao.pessoas();
}