*** Settings ***
Library  Collections
Library  DebugLibrary
Library  PageObjectLibrary
Library  SeleniumLibrary
Library  OperatingSystem
Library  String
Library  FakerLibrary

Resource  ./../keywords/login_kw.robot
Resource  ./../keywords/cadastro_kw.robot


Resource  ./../support/commons.robot

Variables  ./${ENV_NAME}.py

*** Variables ***
${USER}  aula1test@ame.com
${PASS}  admin123
${INVALID_USER}  user
${INVALID_PASS}  ldkfan
