 # language: pt

  @login
  Funcionalidade: Login
    Eu como usuário do sistema
    Quero fazer login
    Para fazer uma compra no site

    Contexto: Acessar tela de login
      Dado que estou na tela de login

    @login-sucesso
    Cenário: Login com sucesso
      Quando preencho login "leonardoteste@gmail.com" e senha "123456"
      E clico em Login
      Então vejo mensagem de login com sucesso

      @login-invalido
      Esquema do Cenário: Validar: <name>
        Quando preencho login "<user>" e senha "<password>"
        E clico em Login
        Então  vejo mensagem "<message>" de campo não preenchido

        Exemplos:
        | user                   | password  |message         | name            |
        | emailinvalido          |123456     |E-mail inválido.| E-mail inválido |
        |                        |123456     |E-mail inválido.| E-mail vázio    |
        | leonardoteste@gmail.com|1234       |Senha inválida. | Senha inválida  |
        | leonardoteste@gmail.com|           |Senha inválida. | Senha Vázia     |
