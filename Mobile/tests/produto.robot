*** Settings ***
Resource  ./../resources/support/index.robot
Force Tags  produto
# Suit Setup
Test Setup     Open Application ${REMOTE_URL} platformName=${PLATFORM_NAME} platformVersion=${PLATFORM_VERSION} deviceName=${DEVICE_NAME} app=${APP} automationName=${AUTOMATION_NAME} appPackage=${APP_PACKAGE}
# Suit Teardown
Test Teardown   Close Application

*** Test Cases ***

Scenario: Criando um novo produto
   [Tags]  new_product
   Quando clico em New
   E informo todos os campos obrigatórios 
   Então clico em Save
   E meu porduto é criado com sucesso

Scenario: Editando o produto
   [Tags]  edit_product
   Quando clico em Edit
   E altero o campo code
   Então clico em Save
   E o code do meu porduto é alterado com sucesso

Scenario: Deletando o produto
   [Tags]  delete_product
   Quando clico em Delete
   E clico em Yes
   Então meu produto é deletado

