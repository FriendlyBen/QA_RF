***Settings***
Documentation       Project 1 (Automation on API token page)

Library             SeleniumLibrary

Resource    ./resources.robot

***Test Cases***
# Test Case 1.1
# Users will have to log in to create an API token.
#     User Log in

# Test Case 1.2
# "Select scopes based on the access you need" section cannot receive null input.
#     User Log in
#     Wait Until Element Is Visible    ${token_name_input}    10
#     Input Text    ${token_name_input}    testing
#     Wait Until Element Is Visible    ${disabled_create_token}    10

# Test Case 1.3
# "Select scopes based on the access you need" section accepts more than 1 input.
#     User Log in
#     Wait Until Element Is Visible    ${read_box}    10
#     Click Element    ${read_box}
#     Click Element    ${trade_box}
#     Click Element    ${payment_box}
#     Wait Until Element Is Visible    ${token_name_input}    10
#     Input Text    ${token_name_input}    testing
#     Wait Until Element Is Visible    ${create_btn}    10
#     Click Element    ${create_btn}

# Test Case 1.4
# "Select scopes based on the access you need" section's input range is >1 and <=5.
#     User Log in
#     Wait Until Element Is Visible    ${read_box}    10
#     Click Element    ${read_box}
#     Click Element    ${trade_box}
#     Click Element    ${payment_box}
#     Click Element    ${trading_information}
#     Click Element    ${admin}
#     Wait Until Element Is Visible    ${token_name_input}    10
#     Input Text    ${token_name_input}    testing
#     Wait Until Element Is Visible    ${create_btn}    10
#     Click Element    ${create_btn}

# Test Case 2.1
# "Name your token and click on 'Create' to generate your token" cannot be null.
#     User Log in
#     Wait Until Element Is Visible    ${read_box}    10
#     Click Element    ${read_box}
#     Click Element    ${trade_box}
#     Wait Until Element Is Visible    ${disabled_create_token}    10

# Test Case 2.2
# "Name your token and click on 'Create' to generate your token" can receive only integer input.
    # User Log in
    # Wait Until Element Is Visible    ${read_box}    10
    # Click Element    ${read_box}
    # Click Element    ${trade_box}
    # Click Element    ${payment_box}
    # Click Element    ${admin}
    # Wait Until Element Is Visible    ${token_name_input}    10
    # Input Text    ${token_name_input}    1234567890
    # Wait Until Element Is Visible    ${create_btn}    10
    # Click Element    ${create_btn}

# Test Case 2.3
# "Name your token and click on 'Create' to generate your token" can receive only alphabetical input.
#     User Log in
#     Wait Until Element Is Visible    ${read_box}    10
#     Click Element    ${read_box}
#     Wait Until Element Is Visible    ${token_name_input}    10
#     Input Text    ${token_name_input}    sadhaksjdhasd
#     Wait Until Element Is Visible    ${create_btn}    10
#     Click Element    ${create_btn}

# Test Case 2.4
# "Name your token and click on 'Create' to generate your token" can receive alphanumeric input.
#     User Log in
#     Wait Until Element Is Visible    ${read_box}    10
#     Click Element    ${read_box}
#     Click Element    ${trading_information}
#     Wait Until Element Is Visible    ${token_name_input}    10
#     Input Text    ${token_name_input}    testing_123
#     Wait Until Element Is Visible    ${create_btn}    10
#     Click Element    ${create_btn}

# Test Case 2.5
# Name your token and click on 'Create' to generate your token can receive existing input.
#     User Log in
#     Wait Until Element Is Visible    ${read_box}    10
#     Click Element    ${read_box}
#     Click Element    ${trading_information}
#     Wait Until Element Is Visible    ${token_name_input}    10
#     Input Text    ${token_name_input}    testing_123
#     Wait Until Element Is Visible    ${create_btn}    10
#     Click Element    ${create_btn}
#     Sleep    2
#     Click Element    ${trade_box}
#     Click Element    ${payment_box}
#     Input Text    ${token_name_input}    testing_123
#     Click Element    ${create_btn}
    
# Test Case 2.6
# "Name your token and click on 'Create' to generate your token" cannot receive special characters. (Only letters, numbers, and underscores)
#     User Log in
#     Wait Until Element Is Visible    ${read_box}    10
#     Click Element    ${read_box}
#     Click Element    ${trade_box}
#     Click Element    ${payment_box}
#     Wait Until Element Is Visible    ${token_name_input}    10
#     Input Text    ${token_name_input}    !@#$%^&
#     Wait Until Element Is Visible    ${disabled_create_token}    10


# Test Case 2.7
#  "Name your token and click on 'Create' to generate your token" can only receive input with length between 2 and 32.
#     User Log in
#     Wait Until Element Is Visible    ${read_box}    10
#     Click Element    ${read_box}
#     Wait Until Element Is Visible    ${token_name_input}    10
#     Input Text    ${token_name_input}    12345123456787654321wefghjhgfdsasdfghjkjhgfdsdfrgh
#     Sleep    3
#     Press Keys    ${token_name_input}    CTRL+a+BACKSPACE
#     Input Text    ${token_name_input}    2
#     Sleep    3
#     Press Keys    ${token_name_input}    CTRL+a+BACKSPACE
#     Input Text    ${token_name_input}    testing_123
#     Wait Until Element Is Visible    ${create_btn}    10
#     Click Element    ${create_btn}

# Test Case 3.1
# API tokens created can be copied by clicking the copy icon.
#     User Log in
#     Wait Until Element Is Visible    ${read_box}    10
#     Click Element    ${read_box}
#     Wait Until Element Is Visible    ${token_name_input}    10
#     Input Text    ${token_name_input}    ${copy_name}
#     Wait Until Element Is Visible    ${create_btn}    10
#     Click Element    ${create_btn}
#     Sleep    3
#     Wait Until Element Is Visible    ${token_list}    10
#     Scroll Element Into View    ${token_list}
#     Sleep    5
#     Wait Until Element Is Visible    ${copy}    10
#     Click Element    ${copy}
#     Press Keys  ${token_name_input}    CTRL+v
#     Element Text Should Not Be    ${token_name_input}   ""

# Test Case 3.2
# API tokens are visible by clicking the "show this token" icon.
#     User Log in
#     Wait Until Element Is Visible    ${read_box}    10
#     Click Element    ${read_box}
#     Wait Until Element Is Visible    ${token_name_input}    10
#     Input Text    ${token_name_input}    ${eye_name}
#     Wait Until Element Is Visible    ${create_btn}    10
#     Click Element    ${create_btn}
#     Sleep    3
#     Wait Until Element Is Visible    ${token_list}    10
#     Scroll Element Into View    ${token_list}
#     Sleep    1
#     Wait Until Element Is Visible    ${eye}    10
#     Click Element    ${eye}
#     Wait Until Element Is Visible    ${token_name_open}    10

# Test Case 3.3
API tokens can be deleted by clicking the 'delete' button.
    User Log in
    Wait Until Element Is Visible    ${read_box}    10
    Click Element    ${read_box}
    Wait Until Element Is Visible    ${token_name_input}    10
    Input Text    ${token_name_input}    ${delete_name}
    Wait Until Element Is Visible    ${create_btn}    10
    Click Element    ${create_btn}
    Sleep    3
    Wait Until Element Is Visible    ${token_list}    10
    Scroll Element Into View    ${token_list}
    # Wait Until Element Is Visible    ${delete}    10
    Sleep    3
    # Wait Until Element Is Enabled    ${delete}    10
    Wait Until Element Is Visible    //*[text()="delete"]//ancestor::tr[@class="da-api-token__table-cell-row"]//self::*[@data-testid="dt_token_delete_icon"]    
    Click Element    ${delete}
    Wait Until Element Is Visible    ${delete_popup}
    Wait Until Element Is Visible    ${delete_btn_2}    10
    Click Element    ${delete_btn_2}
    Sleep    1
    Wait Until Page Does Not Contain    ${delete}    10






