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
    inteiro quantidade_temp = 0
    real valor_total_bruto = 0.0
    real valor_desconto = 0.0
    real valor_final = 0.0


    // 1. LAÇO PRINCIPAL DO SISTEMA
    enquanto (opcao_menu_principal != 0)
    {
      // Limpa a tela a cada iteração para manter o menu organizado
      limpa()


      escreva("=== BEM-VINDO À NOSSA LOJA VIRTUAL ===
")
      escreva("------------------------------------
")
      escreva("MENU PRINCIPAL
")
      escreva("1. Ver Produtos e Adicionar ao Carrinho (CREATE)
")
      escreva("2. Ver Meus Itens no Carrinho (READ)
")
      escreva("3. Alterar Quantidade no Carrinho (UPDATE)
")
      escreva("4. Remover Item do Carrinho (DELETE)
")
      escreva("0. Finalizar Compra e Ir ao Pagamento
")
      escreva("Escolha uma opção: ")
      leia(opcao_menu_principal)


      escolha (opcao_menu_principal)
      {
        // ===================================================
        // C - CREATE (Adicionar Itens ao Carrinho)
        // ===================================================
        caso 1:
          limpa()
          escreva("--- CATÁLOGO DE PRODUTOS ---
")
          escreva("1. Camisa Esportiva (Estoque: ", estoque_prod1, ") - R$ ", preco_prod1, "
")
          escreva("2. Boné Casual       (Estoque: ", estoque_prod2, ") - R$ ", preco_prod2, "
")
          escreva("3. Tênis de Corrida (Estoque: ", estoque_prod3, ") - R$ ", preco_prod3, "
")
          escreva("Escolha o produto que deseja adicionar: ")
          leia(opcao_crud)


          escreva("Digite a quantidade desejada: ")
          leia(quantidade_temp)


          se (opcao_crud == 1)
          {
            se (quantidade_temp > 0 e quantidade_temp <= estoque_prod1) {
              qtd_carrinho_prod1 = qtd_carrinho_prod1 + quantidade_temp
              estoque_prod1 = estoque_prod1 - quantidade_temp
              escreva("
Item adicionado ao carrinho com sucesso!
")
            } senao {
              escreva("
Quantidade inválida ou estoque insuficiente!
")
            }
          }
          senao se (opcao_crud == 2)
          {
            se (quantidade_temp > 0 e quantidade_temp <= estoque_prod2) {
              qtd_carrinho_prod2 = qtd_carrinho_prod2 + quantidade_temp
              estoque_prod2 = estoque_prod2 - quantidade_temp
              escreva("
Item adicionado ao carrinho com sucesso!
")
            } senao {
              escreva("
Quantidade inválida ou estoque insuficiente!
")
            }
          }
          senao se (opcao_crud == 3)
          {
            se (quantidade_temp > 0 e quantidade_temp <= estoque_prod3) {
              qtd_carrinho_prod3 = qtd_carrinho_prod3 + quantidade_temp
              estoque_prod3 = estoque_prod3 - quantidade_temp
              escreva("
Item adicionado ao carrinho com sucesso!
")
            } senao {
              escreva("
Quantidade inválida ou estoque insuficiente!
")
            }
          }
          senao {
            escreva("
Produto inválido!
")
          }


          escreva("
Pressione ENTER para voltar ao menu...")
          leia(tecla_pausa)
          pare


        // ===================================================
        // R - READ (Visualizar o Carrinho)
        // ===================================================
        caso 2:
          limpa()
          escreva("--- MEU CARRINHO DE COMPRAS ---
")
          se (qtd_carrinho_prod1 == 0 e qtd_carrinho_prod2 == 0 e qtd_carrinho_prod3 == 0)
          {
            escreva("Seu carrinho está vazio.
")
          }
          senao
          {
            se (qtd_carrinho_prod1 > 0) {
              escreva("- ", qtd_carrinho_prod1, "x Camisa Esportiva (R$ ", (qtd_carrinho_prod1 * preco_prod1), "
")
            }
            se (qtd_carrinho_prod2 > 0) {
              escreva("- ", qtd_carrinho_prod2, "x Boné Casual (R$ ", (qtd_carrinho_prod2 * preco_prod2), "
")
            }
            se (qtd_carrinho_prod3 > 0) {
              escreva("- ", qtd_carrinho_prod3, "x Tênis de Corrida (R$ ", (qtd_carrinho_prod3 * preco_prod3), "
")
            }
          }


          escreva("
Pressione ENTER para voltar ao menu...")
          leia(tecla_pausa)
          pare


        // ===================================================
        // U - UPDATE (Atualizar Quantidade no Carrinho)
        // ===================================================
        caso 3:
          limpa()
          escreva("--- ALTERAR QUANTIDADE NO CARRINHO ---
")
          escreva("1. Camisa Esportiva (No carrinho: ", qtd_carrinho_prod1, "
")
          escreva("2. Boné Casual       (No carrinho: ", qtd_carrinho_prod2, "
")
          escreva("3. Tênis de Corrida (No carrinho: ", qtd_carrinho_prod3, "
")
          escreva("Escolha o item para alterar a quantidade: ")
          leia(opcao_crud)


          se (opcao_crud == 1)
          {
            estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1
            escreva("Digite a NOVA quantidade total para este item: ")
            leia(quantidade_temp)


            se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod1) {
              qtd_carrinho_prod1 = quantidade_temp
              estoque_prod1 = estoque_prod1 - quantidade_temp
              escreva("
Quantidade atualizada com sucesso!
")
            } senao {
              estoque_prod1 = estoque_prod1 - qtd_carrinho_prod1
              escreva("
Quantidade inválida ou acima do estoque disponível!
")
            }
          }
          senao se (opcao_crud == 2)
          {
            estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2
            escreva("Digite a NOVA quantidade total para este item: ")
            leia(quantidade_temp)


            se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod2) {
              qtd_carrinho_prod2 = quantidade_temp
              estoque_prod2 = estoque_prod2 - quantidade_temp
              escreva("
Quantidade atualizada com sucesso!
")
            } senao {
              estoque_prod2 = estoque_prod2 - qtd_carrinho_prod2
              escreva("
Quantidade inválida ou acima do estoque disponível!
")
            }
          }
          senao se (opcao_crud == 3)
          {
            estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3
            escreva("Digite a NOVA quantidade total para este item: ")
            leia(quantidade_temp)


            se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod3) {
              qtd_carrinho_prod3 = quantidade_temp
              estoque_prod3 = estoque_prod3 - quantidade_temp
              escreva("
Quantidade atualizada com sucesso!
")
            } senao {
              estoque_prod3 = estoque_prod3 - qtd_carrinho_prod3
              escreva("
Quantidade inválida ou acima do estoque disponível!
")
            }
          }
          senao {
            escreva("
Opção inválida!
")
          }


          escreva("
Pressione ENTER para voltar ao menu...")
          leia(tecla_pausa)
          pare


        // ===================================================
        // D - DELETE (Remover Item do Carrinho)
        // ===================================================
        caso 4:
          limpa()
          escreva("--- REMOVER ITEM DO CARRINHO ---
")
          escreva("1. Camisa Esportiva (No carrinho: ", qtd_carrinho_prod1, "
")
          escreva("2. Boné Casual       (No carrinho: ", qtd_carrinho_prod2, "
")
          escreva("3. Tênis de Corrida (No carrinho: ", qtd_carrinho_prod3, "
")
          escreva("Escolha o item que deseja remover totalmente: ")
          leia(opcao_crud)


          se (opcao_crud == 1) {
            estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1
            qtd_carrinho_prod1 = 0
            escreva("Camisa Esportiva removida do carrinho!")
          }
          senao se (opcao_crud == 2) {
            estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2
            qtd_carrinho_prod2 = 0
            escreva("Boné Casual removido do carrinho!")
          }
          senao se (opcao_crud == 3) {
            estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3
            qtd_carrinho_prod3 = 0
            escreva("Tênis de Corrida removido do carrinho!")
          }
          senao {
            escreva("Opção inválida!")
          }


          escreva("Pressione ENTER para voltar ao menu...")
          leia(tecla_pausa)
          pare


        caso 0:
          limpa()
          escreva("Encerrando seleção de itens e indo para o pagamento...")
          pare


        caso contrario:
          limpa()
          escreva("Opção inválida! Escolha uma das opções do menu.")
          escreva("Pressione ENTER para continuar...")
          leia(tecla_pausa)
          pare
      }
    }


    // CALCULAR VALOR TOTAL DO CARRINHO
    valor_total_bruto = (qtd_carrinho_prod1 * preco_prod1) +
                        (qtd_carrinho_prod2 * preco_prod2) +
                        (qtd_carrinho_prod3 * preco_prod3)


    // 2. ETAPA DE PAGAMENTO
    limpa()
    se (valor_total_bruto > 0)
    {
      escreva("--- FORMA DE PAGAMENTO ---")
      escreva("1. Pagamento via PIX (10% de desconto)")
      escreva("2. Cartão de Crédito (Valor normal)")
      escreva("Escolha a forma de pagamento: ")
      leia(opcao_pagamento)


      escolha (opcao_pagamento)
      {
        caso 1:
          valor_desconto = valor_total_bruto * 0.10
          valor_final = valor_total_bruto - valor_desconto
          pare


        caso 2:
          valor_desconto = 0.0
          valor_final = valor_total_bruto
          pare


        caso contrario:
          escreva("Opção inválida! Processando valor normal.")
          valor_desconto = 0.0
          valor_final = valor_total_bruto
          pare
      }


      // 3. NOTA FISCAL DETALHADA
      limpa()
      escreva("=========================================")
      escreva(" NOTA FISCAL - LOJA VIRTUAL ")
      escreva("=========================================")
      escreva("Itens comprados:")


      se (qtd_carrinho_prod1 > 0) {
        escreva("- ", qtd_carrinho_prod1, "x Camisa Esportiva = R$ ", (qtd_carrinho_prod1 * preco_prod1))
      }
      se (qtd_carrinho_prod2 > 0) {
        escreva("- ", qtd_carrinho_prod2, "x Boné Casual = R$ ", (qtd_carrinho_prod2 * preco_prod2))
      }
      se (qtd_carrinho_prod3 > 0) {
        escreva("- ", qtd_carrinho_prod3, "x Tênis de Corrida = R$ ", (qtd_carrinho_prod3 * preco_prod3))
      }


      escreva("-----------------------------------------")
      escreva("Valor total bruto: R$ ", valor_total_bruto, "")
      escreva("Desconto aplicado: R$ ", valor_desconto, "")
      escreva("Valor final a pagar: R$ ", valor_final, "")
      escreva("=========================================")
      escreva("Obrigado por comprar conosco!")
    }
    senao
    {
      escreva("Carrinho vazio. Compra cancelada.")
    }
  }
}

