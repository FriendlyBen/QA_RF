*** Settings ***
Documentation       Project 2 (Automation on Account Closing)

Library             SeleniumLibrary
Resource            ./resources2.robot


*** Test Cases ***
# Test Case 1.1
# Users will have to log in to close account
#    User Log in

# Test Case 1.2
# Security and privacy policy hyperlink works
#    User Log in
#    Wait Until Element Is Visible    ${security_privacy}    10
#    Click Element    ${security_privacy}
#    Switch Window    url=https://deriv.com/tnc/security-and-privacy.pdf
#    Location Should Be    https://deriv.com/tnc/security-and-privacy.pdf

# #Test Case 1.3
# Test cancel button
#    User Log in
#    Wait Until Element Is Enabled    ${cancel_btn}    10
#    Click Element    ${cancel_btn}
#    Wait Until Element Is Visible    //*[text()="Reports"]    10

# Test Case 1.4
# Test Close my account button
#    User Log in
#    Wait Until Element Is Enabled    ${close_acc_btn}    10
#    Click Element    ${close_acc_btn}
#    Wait Until Element Is Visible    //p[@class="dc-text closing-account-reasons__title"]    10

# Test case 2.1
# Test back button
#    User Log in
#    Wait Until Element Is Enabled    ${close_acc_btn}    10
#    Click Element    ${close_acc_btn}
#    Wait Until Element Is Visible    ${back_btn}    10
#    Click Element    ${back_btn}
#    Wait Until Element Is Visible    ${close_acc_btn}    10

# Test case 2.2
# Check box area cannot receive null input
#    User Log in
#    Wait Until Element Is Enabled    ${close_acc_btn}    10
#    Click Element    ${close_acc_btn}
#    Wait Until Element Is Visible    //p[@class="dc-text closing-account-reasons__title"]    10
#    Wait Until Element Is Visible    ${textbox1}    10
#    Input Text    ${textbox1}    Testing1
#    Input Text    ${textbox2}    Testing2
#    Wait Until Element Is Enabled    ${reason_error}    10

# Test case 2.3
# Check box area cannot receive more then 3 input
#    User Log in
#    Wait Until Element Is Enabled    ${close_acc_btn}    10
#    Click Element    ${close_acc_btn}
#    Wait Until Element Is Visible    ${checkbox1}    10
#    Click Element    ${checkbox1}
#    Click Element    ${checkbox2}
#    Click Element    ${checkbox3}
#    Wait Until Element Is Visible    ${checkbox_error}    10

# Test Case 2.4
# "If you don't mind sharing, which other trading platforms do you use?" can recieve null data
#    User Log in
#    Wait Until Element Is Enabled    ${close_acc_btn}    10
#    Click Element    ${close_acc_btn}
#    Wait Until Element Is Visible    ${checkbox1}    10
#    Click Element    ${checkbox1}
#    Click Element    ${checkbox2}
#    Click Element    ${checkbox3}
#    Click Element    ${continue_btn}
#    Wait Until Element Is Visible    ${warning}    10

# Test Case 2.5
# "If you don't mind sharing, which other trading platforms do you use?" can recieve only numeric input
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    1234567890
#     Click Element    ${continue_btn}
#     Wait Until Element Is Visible    ${warning}    10

#test Case 2.6
# "If you don't mind sharing, which other trading platforms do you use?" can recieve only alpahebetic input
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    asdfgjklkjdsxcvb
#     Click Element    ${continue_btn}
#     Wait Until Element Is Visible    ${warning}    10

#Test Case 2.7
# "If you don't mind sharing, which other trading platforms do you use?" can recieve only alphanumeric input
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    asdfg1278
#     Click Element    ${continue_btn}
#     Wait Until Element Is Visible    ${warning}    10

#Test Case 2.8
# "If you don't mind sharing, which other trading platforms do you use?" cannot receive special characters (Must be numbers, letters, and special characters . , ' -)
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    !@#$%^&*
#     Wait Until Element Is Visible    ${continue_disabled}    10
#     Wait Until Element Is Visible    ${special_characters_error}    10

#Test Case 2.9
# "If you don't mind sharing, which other trading platforms do you use?" can only accept 110 characters
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    asdfuydsdfguiufdvghuyfcvhuiuygfvh12345678998trdscgyu9876543234590iuygfcvbhi987654323456789uytfcvbhji98765432qw
#     Wait Until Element Is Visible    ${remaining_characters}    10

# #Test case 2.10
# "What could we do to improve?" can receive null input
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    testing
#     Wait Until Element Is Visible    ${continue_btn}    10
#     Click Element    ${continue_btn}
#     Wait Until Element Is Visible    ${warning}

#Test case 2.11
# "What could we do to improve?" can receive only numeric input
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    testing
#     Input Text    ${textbox2}    1234567890
#     Wait Until Element Is Visible    ${continue_btn}    10
#     Click Element    ${continue_btn}
#     Wait Until Element Is Visible    ${warning}

#Test Case 2.12
# "What could we do to improve?" can receive only alpahebetic input
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    testing
#     Input Text    ${textbox2}    qwertyuiop
#     Wait Until Element Is Visible    ${continue_btn}    10
#     Click Element    ${continue_btn}
#     Wait Until Element Is Visible    ${warning}

#Test Case 2.13
# "What could we do to improve?" can receive only alphanumeric input
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    testing
#     Input Text    ${textbox2}    qwertyuiop12346789
#     Wait Until Element Is Visible    ${continue_btn}    10
#     Click Element    ${continue_btn}
#     Wait Until Element Is Visible    ${warning}

# #Test Case 2.14
# "What could we do to improve?" cannot receive special characters (Must be numbers, letters, and special characters . , ' -)
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    Testing
#     Input Text    ${textbox2}    !@#$%^&*
#     Wait Until Element Is Visible    ${continue_disabled}    10
#     Wait Until Element Is Visible    ${special_characters_error}    10

#Test Case 2.15
# "What could we do to improve?" can only accept 110 characters
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    Testing
#     Input Text    ${textbox2}    asdfuydsdfguiufdvghuyfcvhuiuygfvh12345678998trdscgyu9876543234590iuygfcvbhi987654323456789uytfcvbhji98765432qw
#     Wait Until Element Is Visible    ${remaining_characters}    10

# Test Case 2.16
# Textbox1 and Textbox2 can only have 110 characters in total
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    asdfuydsdfguiufdvghuyfcvhuiuygfvh12345678998trdscgyu9876543234590iuygfcvbhi987654323456789uytfcvbhji98765432qw
#     Input Text    ${textbox2}    asdfuydsdfguiufdvghuyfcvhuiuygfvh12345678998trdscgyu9876543234590iuygfcvbhi987654323456789uytfcvbhji98765432qw
#     Element Text Should Be    ${textbox2}    ${EMPTY}
#     Press Keys    ${textbox1}    CTRL+a+BACKSPACE
#     Input Text    ${textbox2}    asdfuydsdfguiufdvghuyfcvhuiuygfvh12345678998trdscgyu9876543234590iuygfcvbhi987654323456789uytfcvbhji98765432qw
#     Input Text    ${textbox1}    asdfuydsdfguiufdvghuyfcvhuiuygfvh12345678998trdscgyu9876543234590iuygfcvbhi987654323456789uytfcvbhji98765432qw
#     Element Should Contain    ${textbox1}    ${EMPTY}


#Test Case 3.1
# Test warning go back button
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    testing876543
#     Input Text    ${textbox2}    qwertyuiop1234
#     Wait Until Element Is Visible    ${continue_btn}    10
#     Click Element    ${continue_btn}
#     Wait Until Element Is Visible    ${go_back_btn}    10
#     Click Element    ${go_back_btn}
#     Wait Until Element Is Visible    ${title}    10

#Test Case 3.2
# Test Close account button
#     User Log in
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    testing876543
#     Input Text    ${textbox2}    qwertyuiop1234
#     Wait Until Element Is Visible    ${continue_btn}    10
#     Click Element    ${continue_btn}
#     Sleep    3
#     Wait Until Element Is Visible    ${last_close_btn}    10
#     Click Element    ${last_close_btn}
#     Sleep    3
#     Wait Until Element Is Visible    ${countdown}    10

#Test Case 3.3
# User have to be logged in to close account
#     User Log in after log out
#     Wait Until Element Is Enabled    ${close_acc_btn}    10
#     Click Element    ${close_acc_btn}
#     Wait Until Element Is Visible    ${checkbox1}    10
#     Click Element    ${checkbox1}
#     Click Element    ${checkbox2}
#     Click Element    ${checkbox3}
#     Input Text    ${textbox1}    testing876543
#     Input Text    ${textbox2}    qwertyuiop1234
#     Wait Until Element Is Visible    ${continue_btn}    10
#     Click Element    ${continue_btn}
#     Sleep    3
#     Wait Until Element Is Visible    ${last_close_btn}    10
#     Click Element    ${last_close_btn}
#     Sleep    3
#     Wait Until Element Is Visible    ${countdown}    10



