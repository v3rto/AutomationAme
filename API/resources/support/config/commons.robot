* Keywords *

Check Status Code 
    [Arguments]     ${EXPECTED_STATUS}
    Should Be Equal As Strings  ${RESPONSE.status_code}     ${EXPECTED_STATUS}
    Log     Status Code Obtido: ${RESPONSE.status_code} -- Status Code Esperado: ${EXPECTED_STATUS}