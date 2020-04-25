*** Settings ***
Resource    ./../support/index.robot


*** Variables ***

${SESSION}  employee

*** Keywords ***

### Cadastrar Empregado ###

Quando realizar um POST para cadastrar um novo employee
    ${employee_name}    First Name

    Create Session  ${SESSION}  ${HOST}     headers=${HEADER_JSON}
    ${json_body}    Load JSON From File     ${JSON_CREATE_EMPLOYEE}
    ${json_body}    Update Value To Json    ${json_body}    $.name      ${employee_name}
 
    ${RESPONSE}     POST Request    ${SESSION}      ${CREATE_EMPLOYEE_ENDPOINT}     data=${json_body}   headers=${HEADER_JSON}

    ${ID_EMPLOYEE}  Get Value From Json     ${RESPONSE.json()}      $..id

    Set Test Variable   ${RESPONSE}
    Set Test Variable   ${ID_EMPLOYEE}

Entao validar a cadastro do employee e código "${status_code}"
    Log             Response: ${RESPONSE.text}
    Log To Console  Response: ${RESPONSE.text}
    Check Status Code         ${status_code}
    # Should Not Be Empty       ${RESPONSE.json()}

### Buscar Empregado ###

Quando realizar um GET para buscar um employee por ID
    Create Session  ${SESSION}      ${HOST} headers=${HEADER_JSON} verify=false disable_warnings=1
    ${RESPONSE}     GET Request     ${SESSION}      ${GET_EMPLOYEE_ENDPOINT}${ID_EMPLOYEE}      headers=${HEADER_JSON}
    
    Set Test Variable   ${RESPONSE}

Entao validar a consulta do employee por ID e código "${status_code}"
    Log                       Response: ${RESPONSE.text}
    Log To Console            Response: ${RESPONSE.text}
    Check Status Code         ${status_code}
    # Should Not Be Empty       ${RESPONSE.json()}
    # Dictionary Should Contain Value     ${RESPONSE.json()}      ${ID_EMPLOYEE}   
    #Dictionary Should Contain Key     ${RESPONSE.json()}      $.data.id     

### Deletar Empregado ###

Quando realizar um DELETE para deletar um employee
    Create Session  ${SESSION}      ${HOST} headers=${HEADER_JSON} verify=false disable_warnings=1
    ${RESPONSE}     DELETE Request     ${SESSION}     ${DELETE_EMPLOYEE_ENDPOINT}${ID_EMPLOYEE}     headers=${HEADER_JSON}
    
    Set Test Variable   ${RESPONSE}

Entao validar a exclusão do employee e código "${status_code}" 
    Log                       Response: ${RESPONSE.text}
    Log To Console            Response: ${RESPONSE.text}
    Check Status Code         ${status_code}
    # Should Not Be Empty       ${RESPONSE.json()}

### COMMONS KEYWORDS ###

Dado que exista um employee criado 
    Quando realizar um POST para cadastrar um novo employee
    Entao validar a cadastro do employee e código "200"
