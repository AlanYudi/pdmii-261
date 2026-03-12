class pilha{
  List<int> elementos = [];

  void empilhar(int valor){
    pilha.add(valor);
    print("$valor empilhado")
  }

  void desempilhar(int valor){
    if (elementos.isNotEmpty){
      elementos.removeLast();
    } else{
      print("Não há elementos na pilha");
    }

  }

}
