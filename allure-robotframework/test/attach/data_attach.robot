*** Settings ***
Library     ../run_robot_library.py
Library     ../test_allure_library.py
Suite Setup  Run exampe


*** Keywords ***
Run exampe
    ${example_file}     Get Example File
    ${allure_report}   Run Robot With Allure   ${example_file}
    Set Suite Variable	${report}   ${allure_report}


*** Test Case ***
Data Attachment
    ${test_case}     Should Has Test Case   ${report}    Data Attachment
    ${step}   Should Has Step     ${test_case}    AllureLibrary.Attach
    Should Has Attachment    ${step}

Data Attachment With Name And Type
    ${test_case}     Should Has Test Case   ${report}    Data Attachment With Name And Type
    ${step}   Should Has Step     ${test_case}    AllureLibrary.Attach
    Should Has Attachment    ${step}    name=links