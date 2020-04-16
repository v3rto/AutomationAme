*** Settings ***
Library     Collections
Library     DebugLibrary
Library     RequestsLibrary
Library     SeleniumLibrary
Library     OperatingSystem
Library     String
Library     FakerLibrary
Library     JSONLibrary

#KEYWORDS
Resource    C:/Users/Everton Santos/Documents/Robot/AmeDigitalTest/API/resources/keywords/kw_employee.robot

#SERVICE OBJECTS
Resource    C:/Users/Everton Santos/Documents/Robot/AmeDigitalTest/API/resources/serviceObjects/employee_service.robot

#COMMONS
Resource    C:/Users/Everton Santos/Documents/Robot/AmeDigitalTest/API/resources/support/config/commons.robot


Variables   ./${ENV_NAME}.py

*** Variable ***
${HEADER_JSON}   Content-Type=application/json 






