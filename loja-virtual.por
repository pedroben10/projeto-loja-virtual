programa {
  funcao inicio() {

    // Variáveis de controle de navegação
    inteiro opcao_menu_principal = -1
    inteiro opcao_crud = -1
    inteiro opcao_pagamento = 0

    // Variável auxiliar para pausar a tela
    cadeia tecla_pausa = ""

    // Preços e Estoques fixos dos Produtos
    real preco_prod1 = 150.0, preco_prod2 = 60.0, preco_prod3 = 250.0 
    inteiro estoque_prod1 = 10, estoque_prod2 = 15, estoque_prod3 = 8

    // Variáveis do CARRINHO DE COMPRAS (Qtds dos Itens)
    inteiro qtd_carrinho_prod1 = 0
    inteiro qtd_carrinho_prod2 = 0

    inteiro qtd_carrinho_prod3 = 0

    // Variáveis auxiliares para operações
    inteiro quantidade_tempo = 0
    real valor_total_bruto = 0.0
    real valor_desconto = 0.0
    real valor_final = 0.0

    // 1. LAÇO PRINCIPAL DO SISTEMA
    enquanto (opcao_menu_principal !=0){
      // Limpa a tela a cada iteração para manter o menu organizado
      limpa()

      escreva("=== BEM VINDO À NOSSA LOJA VIRTUAL ===")

      escreva("------------------------------------------")
      escreva("MENU PRINCIPAL")

    escreva("1. Ver Produtos e Adicionar ao Carrinho (CREATE)")


    escreva("2. Ver Meus Itens no Carrinho (READ)")


    escreva("3. Alterar Quantidae no Carrinho (UPDATE)")


    escreva("4.Remover Item do Carrinho (DELETE)")


    escreva("0. Finalizar Compra e Ir ao Pagamento ")


    escreva("Escolha uma opção: ")
    leia(opcao_menu_principal)


    escolha(opcao_menu_principal)
    {

     // ====================================================
     // C - CREATE (Adicionar Itens ao Carrinho)
     // ====================================================

      caso 1:

    limpa ()

    escreva("--- CATÁLOGO DE PRODUTOS ---")

    escreva ("1. Camisa Esportiva (Estoque: ", estoque_prod1, ") R$", preco")

    escreva ("2. Boné Casual (Estoque:", estoque_prod2, ") R$", preco")

    escreva ("3. Tênis de Corrida (Estoque: ", estoque_prod3, ") R$", preco")

    escreva ("Escolha o produto que deseja adicionar: ")

    leia(opcao_crud)

    escreva ("Digite a quantidade desejada: ")
    leia(quantidade_temp)
    se (opcao_crud = 1)
    {
    se (quantidade_temp > 0 e quantidade_temp <= estoque_prod1) {


  }

  escreva ("Pressione ENTER para voltar ao menu...")
  leia(tecla_pausa)
  pare

  //=================================================
  // U UPDATE (Atualizar Quantidade no Carrinho)
  //=================================================
  caso 3:
      limpa()
      escreva("--- ALTERAR QUANTIDADE NO CARRINHO ---")

      escreva ("1. Camisa Esportiva (No carrinho: ", qtd_carrinho_prod1, ")
")
      escreva ("2. Boné Casual (No carrinho: ", qtd_carrinho_prod2, ")
")
      escreva ("3. Tênis de Corrida (No carrinho: ", qtd_carrinho_prod3, ")
      
  }
}
