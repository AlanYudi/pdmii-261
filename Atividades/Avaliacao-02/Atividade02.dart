class Pilha{
  List<int> elementos = [];

  void empilhar(int valor){
    elementos.add(valor);
    print("$valor empilhado");
  }

  void desempilhar(){
    if (elementos.isNotEmpty){
      elementos.removeLast();
    } else{
      print("Não há elementos na pilha");
    }

  }
  void mostrarTopo(){
    if(elementos.isEmpty){
      print("Não há elemento na pilha.");
    }else{
      print("O elemento no topo: ${elementos.last}");
    }
  }
  void mostrarPilha(){
    if(elementos.isEmpty){
      print("Não há elemento na pilha.");
    }else{
      print("Os elementos da pilha são: $elementos");
    }

  }

}
void main(){
  Pilha pilha = Pilha();

  pilha.empilhar(10);
  pilha.empilhar(20);
  pilha.empilhar(30);

  pilha.mostrarTopo();
  pilha.mostrarPilha();

  pilha.desempilhar();

  pilha.mostrarTopo();
  pilha.mostrarPilha();
}
