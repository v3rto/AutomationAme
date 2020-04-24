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
Resource    ./../keywords/kw_employee.robot

#SERVICE OBJECTS
Resource    ./../serviceObjects/employee_service.robot

#COMMONS
Resource    ./../support/config/commons.robot


Variables   ./${ENV_NAME}.py

*** Variable ***
&{HEADER_JSON}   Content-Type=application/json  Accept=/  Host=dummy.restapiexample.com   User-Agent=PostmanRuntime/7.17.1    Cache-Control=no-cache  Postman-Token=286e6fde-3080-4b88-a5f7-84731cb52d7b  Accept-Encoding=gzip, deflate   Content-Length=60   Cookie=ezoref_133674=; ezCMPCCS=true; ezoadgid_133674=-1; ezoab_133674=mod63; active_template::133674=pub_site.1586993340; PHPSESSID=5de71b94e4570c5204216866371de001   Connection=keep-alive






