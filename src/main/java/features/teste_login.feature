#language:pt
Funcionalidade: Tela de login
  Cenário: login na tela principal

  Esquema do Cenário: Testando tela login com falha
    Dado que o usuário está na tela de login
    Quando preenche o campo usarname com <usuário> e o campo password com <senha>
    E clica no botão login
    Então visualiza a <mensagem> de erro

    Exemplos:
      | usuário                   | senha          | mensagem                                                                    |
      | "0123456789"              | "9876543210"   | "Epic sadface: Username and password do not match any user in this service" |
      | "abc_fgh"                 | "123456"       | "Epic sadface: Username and password do not match any user in this service" |
      | "000000"                  | "000000"       | "Epic sadface: Username and password do not match any user in this service" |
      | "standarduser"            | "secret_"      | "Epic sadface: Username and password do not match any user in this service" |
      | "performance glitch user" | "secret_sauce" | "Epic sadface: Username and password do not match any user in this service" |
      | "problem_user"            | "_SAUCE"       | "Epic sadface: Username and password do not match any user in this service" |
      | "STANDARD_USER"           | "SECRET_SAUCE" | "Epic sadface: Username and password do not match any user in this service" |
      | "PERFORMANCE_GLITCH_USER" | "SECRET_SAUCE" | "Epic sadface: Username and password do not match any user in this service" |
      | "problem_user"            | "     "        | "Epic sadface: Password is required "                                       |
      | " "                       | "secret_sauce" | "Epic sadface: username is required "                                       |
      | "locked_out_user"         | "secret_sauce" | "Epic sadface: Sorry, this user has been locked out"                        |
      | "       "                 | "     "        | "Epic sadface: Password is required"                                        |
      | "Problem_User"            | "secret_sauce" | "Epic sadface: Username and password do not match any user in this service" |

  Esquema do Cenário:
    Dado que o usuário está na tela de login
    Quando preenche o campo usarname com <usuário> e o campo password com <senha>
    E clica no botão login
    Então tem acesso a página e visualiza <produto>

    Exemplos:

      | usuário                   | senha          | produto    |
      | "standard_user"           | "secret_sauce" | "Products" |
      | "performance_glitch_user" | "secret_sauce" | "Products" |
      | "problem_user"            | "secret_sauce" | "Products" |


