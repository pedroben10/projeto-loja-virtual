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



  }
}
