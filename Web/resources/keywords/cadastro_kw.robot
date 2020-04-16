*** Settings ***
Library  ./../page_objects/login.py
Library     FakerLibrary    locale=en_US


*** Keywords ***

# Cadastro Sucesso
    
Dado que tenha acessado a tela de Login
    Go To   ${URL_LOGIN}

Quando clico em CreateAccount após informar um e-mail válido
    ${email}        Free Email
    Enter create email      ${email}
    Click create account button

E informo todos os campos obrigatórios
    #Fakers
    ${fisrt_name}       First Name
    ${last_name}        Last Name
    ${address}          Street Address
    ${city}             City
    ${state}            State
    ${postcode}         Postcode	

    Enter customer firstname    ${fisrt_name}
    Enter customer lastname     ${last_name}
    Enter password      ${PASS}
    Enter address       ${address} 
    Enter city          ${city}
    Select state option     ${state}                #Alabama 
    Enter postcode          ${postcode}   #35005
    Enter mobile phone     +5511957999902

Então clico em Register
    Click register button

E meu cadastro é concluido com sucesso
    Click home button

