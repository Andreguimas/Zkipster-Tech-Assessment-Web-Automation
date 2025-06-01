# This file contains the test case for creating a new user in the DemoQA web tables application.
*** Settings ***
Documentation    Test Case for creating a new user in the DemoQA web tables application.
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
