*** Variables ***
${home_url}                 https://app.deriv.com/account/api-token
${email}                    //input[@id="txtEmail"]
${password}                 //input[@id="txtPass"]
${login}                    //button[@name="login"]
${token_name_input}         //input[@name="token_name"]
${disabled_create_token}    //button[@disabled]
${read_box}                 //input[@name="read"]//parent::label
${trade_box}                //input[@name="trade"]//parent::label
${payment_box}              //input[@name="payments"]//parent::label
${trading_information}      //input[@name="trading_information"]//parent::label
${admin}                    //input[@name="admin"]//parent::label
${create_btn}               //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-btn__button-group da-api-token__button"]
${copy}                     //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[2]/div/div[2]/div/div
${copy_name}                copy
${eye}                      //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr[6]/td[2]/div/div[3]/div/div
${eye_name}                 eye
${token_list}               //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[1]/span
${keyname}                  abc123
${token_name_open}          //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[2]/div/p
${delete}                   //*[text()="delete"]//ancestor::tr[@class="da-api-token__table-cell-row"]//self::*[@data-testid="dt_token_delete_icon"]
${delete_name}              delete
${delete_popup}             //*[@id="modal_root"]/div/div/div[1]
${click_delete}             //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr[6]/td[5]/div/div
${delete_btn_2}             //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-dialog__button"]


*** Keywords ***
User Log in
    Open Browser    ${home_url}    Chrome
    Set Window Size    1280    1024
    Wait Until Element Is Visible    ${email}
    Input Text    ${email}    Dummy1
    Input Password    ${password}    Dummy2
    Click Element    ${login}
    Wait Until Element Is Visible    //*[text()="Settings"]    10
    Sleep    1
