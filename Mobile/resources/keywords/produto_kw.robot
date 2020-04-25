*** Settings ***
Resource    ./../resources/support/index.robot

*** Keywords ***

#Novo_produto

Quando clico em New
    # [Arguments] ${product_name} ${contact_phone} ${contact_email}
    &{home_product_page} Convert To Dictionary ${home_product_elements}
    Set Suite Variable &{home_product_page}
    Click Element   ${home_product_page.btn_new_product}
E informo todos os campos obrigatórios
    Input Element 
Então clico em Save

E meu porduto é criado com sucesso

#Editar_produto

Quando clico em Edit

E altero o campo code

Então clico em Save

E o code do meu porduto é alterado com sucesso

#Deletar_produto

Quando clico em Delete

E clico em Yes

Então meu produto é deletado