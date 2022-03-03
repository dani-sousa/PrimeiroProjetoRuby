#language: pt

Funcionalidade: Login

    Cenario: Login

        Dado que acesso a tela de Login
        Quando submeto minhas credenciais:
            |cpf|01585500099|
            |senha|253698|
        Então devo ter acesso ao app.

    