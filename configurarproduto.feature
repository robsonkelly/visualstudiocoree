#language: pt

Funcionalidade: Configurar caracteristicas dos produtos
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Cenário: Seleção de cor e tamanho do produto obrigatorio
Dado selecionar produto em relação cor, tamanho e quantidade
Quando o cliente seleciona o Size "S" e a cor "Red"
E escolher a quantidade "2"
Então deve exibir a mensagem " seus produtos estão no carrinho"

Cenário: Cliente so pode adquirir 10 produtos por compra
Dado quantidade maxima de 10 produtos por venda
Quando o cliente selecionar o produto   
E escolher a quantidade "9"
Então deve exibir a mensagem " seus produtos estão no carrinho"


Cenário: Cliente so pode adquirir 10 produtos por compra
Dado quantidade maxima de 10 produtos por venda
Quando o cliente seleciona o produto   
E escolher a quantidade "12"
Então deve exibir a mensagem " quantidade maxima atingida o limite para compra é de somente DEZ itens"

Cenário: Cliente pode resetar produto 
Dado Cliente pode limpar as configurações dos produtos utilizando o botão limpar
Quando o cliente seleciona o Size "S",  cor "Red" quantidade "5"  
E clicar no botão "limpar"
Então o produto deve voltar ao estado original










