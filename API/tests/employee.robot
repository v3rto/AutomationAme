*** Settings ***
Resource    C:/Users/Everton Santos/Documents/Robot/AutomationAme/API/resources/support/index.robot
Force Tags  employee
#Suite Setup               
#Test Setup      
#Test Teardown         


*** Test Cases ***

Scenario: Cadastrar Empregado
    [Tags]  create_employee
    Quando realizar um POST para cadastrar um novo employee
    Entao validar a cadastro do employee e código "201"

Scenario: Buscar Empregado
    [Tags]  consult_employee
    Dado que exista um employee criado 
    Quando realizar um GET para buscar um employee por ID
    Entao validar a consulta do employee por ID e código "200"

Scenario: Deletar Empregado
    [Tags]  delete_employee
    Dado que exista um employee criado 
    Quando realizar um DELETE para deletar um employee
    Entao validar a exclusão do employee e código "200" 