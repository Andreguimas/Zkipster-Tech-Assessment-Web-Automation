*** Settings ***
Documentation    Teste de criação de novo utilizador.
Library          Browser
Resource         ../Resources/keywords.resource

Suite Setup      Open DemoQA Page
Suite Teardown   Close Browser

*** Test Cases ***
Create New User Successfully
    Click Add User Button
    Fill In User Form
    Submit Form
    User Should Appear In Table
