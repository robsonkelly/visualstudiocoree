            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a pagina de autenticação da loja EBAC-SHOP

            Cenário: Dados Validos para tela de checkout
            Quando eu digitar o usuario "Fulanodetal"
            E a senha "fulano123"
            Então dever exibir uma mensagem de "login efetuado com sucesso,Fulanodetal foi direcionado para a tela de checkout"

            Cenário: usuario ou senha inválidos
            Quando eu digitar o usuario "Fulanodetal"
            E a senha "xxxxx123"
            Então dever exibir uma mensagem de "usuario ou senha inválidos"

            Cenário: usuario ou senha inválidos
            Quando eu digitar o usuario "Fulanodetalxxx"
            E a senha "fulano123"
            Então dever exibir uma mensagem de "usuario ou senha inválidos"

            Esquema do Cenário: Autenticar varios usuarios
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> 

            Exemplos:
            | usuario         | senha          | mensagem
            | "Fulanodetal"   | " fulano123"   | "login efetuado com sucesso,Fulanodetal foi direcionado para a tela de checkout" |
            | "Siclanodetal"  | " siclano123"  | "login efetuado com sucesso, Siclanodetal foi direcionado para a tela de checkout" |
            | "Beltranodetal" | " Beltrano123" | "login efetuado com sucesso, Beltranodetal foi direcionado para a tela de checkout" |

















