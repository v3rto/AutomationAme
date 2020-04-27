*** Settings ***
Resource  ./../resources/support/index.robot
Force Tags  cadastro
# Suit Setup
Test Setup     Run keywords  Start Chrome                                 AND
...                       Maximize Browser Window                         AND
...                       Dado que tenha acessado a tela de Login
# Suit Teardown
Test Teardown    Run keywords    Capture Page Screenshot                            AND
...                         Close Browser

*** Test Cases ***

Scenario: Efetuando cadastro e login
   [Tags]  cadastro_sucesso
   Quando clico em CreateAccount após informar um e-mail válido
   E informo todos os campos obrigatórios
   Então clico em Register
   E meu cadastro é concluido com sucesso