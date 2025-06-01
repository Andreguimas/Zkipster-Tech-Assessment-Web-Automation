# zkipster QA Engineer Technical Assessment

This repository contains the solution to the **Web Automation** section of the QA Engineer technical assessment for zkipster.

---

## Tech Stack

- [Robot Framework](https://robotframework.org/)
- [robotframework-browser (Playwright)](https://github.com/MarketSquare/robotframework-browser)
- Python 3.10+
- Playwright

---

## Automated Scenario: Create New User

### Flow:

1. Navigate to: https://demoqa.com/webtables  
2. Click the **"Add"** button  
3. Fill in the user form with valid data  
4. Submit the form  
5. Verify that the new user appears in the table  
6. Take a screenshot of the final table state

---

## Project Structure

``` bash
zkipster-qa-task/
│
├── Tests/
│   └── create_user.robot              # Main test file
│
├── Resources/
│   └── keywords.robot                 # Reusable keywords
│
├── Locators/
│   └── user_form_locators.py         # Centralized element locators
│
├── Variables/
│   └── variables.robot               # Global variables (e.g., base URL)
│
├── Output/                           # Generated reports and screenshots
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

## How to run the project

1. Install all dependencies

``` bash
pip install -r requirements.txt
rfbrowser init
```

2. Run the tests

To run each test run the following command on the directory that contains the test cases:

``` bash
robot -d Output Tests
```
