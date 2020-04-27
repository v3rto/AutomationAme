*** Settings ***
Resource  ./../resources/support/index.robot
Force Tags  login
# Suit Setup
Test Setup     Run keywords  Start Chrome                                 AND
...                       Maximize Browser Window                         AND
...                       Dado que tenha acessado a tela de Login
# Suit Teardown
Test Teardown    Run keywords    Capture Page Screenshot                            AND
...                         Close Browser

*** Test Cases ***

Scenario: Login em branco
   [Tags]  login_em_branco
   Quando clico em Signin sem informar email e senha 
   Então o site retorna uma mensagem de erro requisitando e-mail

Scenario: Login invalido
   [Tags]  login_invalido
   E informo Email e Senha inválidos
   Quando clico em Signin
   Então o site retorna uma mensagem de erro de autenticação

Scenario: Login válido
   [Tags]  login_valido
   E informo Email e Senha válidos
   Quando clico em Signin
   Então o login é efetuado com sucesso