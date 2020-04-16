*** Settings ***
Library  ./../page_objects/login.py
Library     FakerLibrary    locale=en_US


*** Keywords ***

# login_válido

E informo Email e Senha válidos
    Enter email  camila@bu.com
    Enter senha  ${PASS}

Quando clico em Signin
    Click signin button

Então o login é efetuado com sucesso
    Page Should Contain  Welcome to your account. Here you can manage all of your personal information and orders.

# login_em_branco

Quando clico em Signin sem informar email e senha 
    Click signin button

Então o site retorna uma mensagem de erro requisitando e-mail
    Page Should Contain  An email address required.

# login_invalido

E informo Email e Senha inválidos
    Enter email     ${INVALID_USER}
    Enter senha     ${INVALID_PASS}

Então o site retorna uma mensagem de erro de autenticação
    Page Should Contain  Invalid email address.

