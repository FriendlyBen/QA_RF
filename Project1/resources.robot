***Variables***
${home_url}    https://app.deriv.com/account/api-token
${email}    //input[@id="txtEmail"]
${password}    //input[@id="txtPass"]
${login}    //button[@name="login"]
${token_name_input}    //input[@name="token_name"]
${disabled_create_token}    //button[@disabled]
${read_box}    //input[@name="read"]//parent::label
${trade_box}   //input[@name="trade"]//parent::label
${payment_box}    //input[@name="payments"]//parent::label
${trading_information}    //input[@name="trading_information"]//parent::label
${admin}    //input[@name="admin"]//parent::label
${create_btn}    //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-btn__button-group da-api-token__button"]
${copy}    //span[text()="abc123"]/ancestor::tr//svg[contains(@class, "dc-clipboard")]/parent::i
${token_list}    //div[@item_title="Copy and paste the token into the app."]


***Keywords***
User Log in
    Open Browser    ${home_url}    Chrome
    Set Window Size    1280    1024
    Wait Until Element Is Visible    ${email}
    Input Text    ${email}    bentley@besquare.com.my
    Input Password    ${password}    Bentley123
    Click Element    ${login}
    Wait Until Element Is Visible    //*[text()="Settings"]    10
    Sleep    1