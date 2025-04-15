class Cliente{
  String? nome;
  String? cpf;

  Cliente(this.nome, this.cpf){

  }
}

// Construtor parametrizado não posicional
class ClienteEspecial{
  String nome;
  String? cpf;
  int? idade;

  ClienteEspecial({this.idade,  required this.nome, this.cpf});

}

void main(){
  Cliente cliente = new Cliente('Cliente 1', '123456-01');
  print('Nome: ${cliente.nome}');
  print('CPF: ${cliente.cpf}');

  ClienteEspecial clienteEspecial = ClienteEspecial(
    nome:'Cliente2', 
    cpf:'222-222-10', 
    idade: 20);
  print('Nome: ${clienteEspecial.nome}');
  print('CPF: ${clienteEspecial.cpf}');
  print('Idade: ${clienteEspecial.idade}');

}