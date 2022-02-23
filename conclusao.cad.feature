            #language: pt

            Funcionalidade: Conclusão de cadastro
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra



            Esquema do Cenário: Obrigatorio o peenchimento de todos os campos
            Dado preencher corretamente todos os campos marcados com asteriscos na pagina checkout
            Quando eu digitar o <nome>,<sobrenome>,<Pais>,<Endereco>,<Cidade>,<CEP>,<Telefone>, <E-mail>
            Então deve desbloquear botão "finalizar compra"

            Exemplos:
            | nome   | sobrenome | Pais   | Endereco                    | Cidade    | CEP      | Telefone      | E-mail                   |
            | João   | Sousa     | Brasil | Rua 0 quadra 0 lote 3       | Barretos  | 14780009 | 11-9959595955 | joao123@gmail.com        |
            | Suelma | Pacifico  | Brasil | Rua 50 quadra 2 lote 35     | Ceres     | 75405067 | 62-9849556955 | suelma123@gmail.com      |
            | Tico   | Alves     | Brasil | Rua Chaves quadra 2 lote 55 | Porangatu | 76550000 | 62-9849556955 | ticonofubaco@hotmail.com |




            Esquema do Cenário: Não permitir E-mail invalido
            Dado Não deve permitir campo e-mail com formato inválido
            Quando eu digitar o <E-mail>,
            Então deve exibir a <mensagem>

            Exemplos:
            | E-mail                | mensagem                       |
            | joao123@gmail.br      | "E-mail invalido ou incorreto" |
            | ticonofubaci@gmail.br | "E-mail invalido ou incorreto" |


            Esquema do Cenário: Mensagem de alerta por falta de preenchimento
            Dado na falta de preenchimento de campos exibir mensagem de alerta
            Quando eu digitar o <nome>,<sobrenome>,<Pais>,<Endereco>,<Cidade>,<CEP>,<Telefone>, <E-mail>
            Então deve exibir a <mensagem>

            Exemplos:
            | nome   | sobrenome | Pais   | Endereco                | Cidade    | CEP      | Telefone      | E-mail                   | mensagem                                       |
            | João   | Sousa     | Brasil | Rua 0 quadra 0 lote 3   | Barretos  | 14780009 |               | joao123@gmail.com        | "necessario preencher todos os campos com (*)" |
            | Suelma | Pacifico  | Brasil | Rua 50 quadra 2 lote 35 |           | 75405067 | 62-9849556955 | suelma123@gmail.com      | "necessario preencher todos os campos com (*)" |
            | Tico   | Alves     | Brasil |                         | Porangatu | 76550000 | 62-9849556955 | ticonofubaco@hotmail.com | "necessario preencher todos os campos com (*)" |




