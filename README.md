# Web Automation Project with Robot Framework

This repository contains a web automation project developed using Robot Framework. The project focuses on testing the login functionality of a web application, specifically the OrangeHRM demo site. The test cases are defined in a tabular format using the DataDriver library to read data from an Excel file.

## Project Structure

```plaintext
robot-framework-web-automation/
│
├── tests/
│   ├── test.robot
│   └── ...
│
├── resources/
│   ├── keywords.robot
│   ├── jayed.py
│   └── Test_Suite.xlsx
│
├── output/
│   ├── log.html
│   ├── output.xml
│   └── report.html
│
├── .gitignore
├── Pipfile
├── Pipfile.lock
├── README.md
└── requirements.txt
```

## Test Cases

### 1. Check login with valid Username and Password (Positive)

**Test Data:**
- Username: Admin
- Password: admin123

**Test Steps:**
1. Open the browser and navigate to the login page.
2. Enter the valid username and password.
3. Click the login button.

**Expected Result:**
- The user should be redirected to the dashboard page.

### 2. Check login with valid Username but invalid Password (Negative)

**Test Data:**
- Username: Admin
- Password: invalid_password

**Test Steps:**
1. Open the browser and navigate to the login page.
2. Enter the valid username and an invalid password.
3. Click the login button.

**Expected Result:**
- The login should fail, and the user should remain on the login page.

## Configuring the Project

Adjust the settings in the `config/settings.robot` file to match your environment and preferences. Ensure that the required libraries, such as SeleniumLibrary and DataDriver, are installed.

## Running Tests

Execute the following command to run all tests:

```bash
robot tests/
```

You can also run a specific test suite by providing its file path:
```bash
robot tests/test.robot
```
## Test Data
Test data is stored in an Excel file (`Test_Suite.xlsx`). Make sure to update the data in this file according to your test scenarios.

## Custom Keywords
The jayed.py file contains custom Python keywords used in the test cases. Customize these keywords based on the requirements of your web application.

## Viewing Reports
After test execution, open the generated HTML report located in the output directory for detailed information about test results.

## Contributing
If you find any issues or have suggestions for improvements, feel free to open an issue or create a pull request.
