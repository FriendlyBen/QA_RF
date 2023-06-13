*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${home_url}                     https://app.deriv.com/account/closing-account
${email}                        //input[@id="txtEmail"]
${password}                     //input[@id="txtPass"]
${login}                        //button[@name="login"]
${security_privacy}             //*[text()="Security and privacy policy"]//parent::a
${pdf}                          //embed[@name="433CF67C1E95BC21842E6F3AD71404CF"]
${cancel_btn}                   //button[@class="dc-btn dc-btn--secondary dc-btn__large closing-account__button--cancel"]
${close_acc_btn}                //button[@class="dc-btn dc-btn--primary dc-btn__large closing-account__button--close-account"]
${textbox1}                     //textarea[@name="other_trading_platforms"]
${textbox2}                     //textarea[@name="do_to_improve"]
${reason_error}                 //p[@class="dc-text closing-account-reasons__error"]
${back_btn}                     //button[@class="dc-btn dc-btn__effect dc-btn--secondary dc-btn__large"]
${checkbox1}                    //label[@class="dc-checkbox closing-account-reasons__checkbox"]//span[@class="dc-text dc-checkbox__label" and contains(text(),"I have other financial priorities.")]
${checkbox2}                    //label[@class="dc-checkbox closing-account-reasons__checkbox"]//span[@class="dc-text dc-checkbox__label" and contains(text(),"I want to stop myself from trading.")]
${checkbox3}                    //label[@class="dc-checkbox closing-account-reasons__checkbox"]//span[@class="dc-text dc-checkbox__label" and contains(text(),"I’m no longer interested in trading.")]
${checkbox4}                    //label[@class="dc-checkbox closing-account-reasons__checkbox"]//span[@class="dc-text dc-checkbox__label" and contains(text(),"I prefer another trading website.")]
${checkbox_error}               //label[@class="dc-checkbox closing-account-reasons__checkbox dc-checkbox--disabled"]
${continue_btn}                 //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large"]
${warning}                      //span[@class="dc-text account-closure-warning-modal__warning-message"]
${continue_disabled}            //button[@disabled]
${special_characters_error}     //p[@class="dc-text closing-account-reasons__error"]
${remaining_characters}         //p[@class="dc-text closing-account-reasons__hint" and contains(text(),"Remaining characters: 0")]
${go_back_btn}                  //*[@id="modal_root"]/div/div/div/div[2]/button[1]
${title}                        //p[@class="dc-text closing-account-reasons__title"]
${countdown}                    //p[@class="dc-text account-closed"]
${last_close_btn}               //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large"]//parent::div[@class="dc-form-submit-button account-closure-warning-modal__close-account-button dc-form-submit-button--relative"]


*** Keywords ***
User Log in
    Open Browser    ${home_url}    Chrome
    Set Window Size    1280    1024
    Wait Until Element Is Visible    ${email}
    Input Text    ${email}    bentley@besquare.com.my
    Input Password    ${password}    Bentley123
    Click Element    ${login}
    Wait Until Element Is Visible    //*[text()="Settings"]    10

User Log in after log out
    Open Browser    ${home_url}    Chrome
    Set Window Size    1280    1024
    Wait Until Element Is Visible    ${email}
    Input Text    ${email}    Dummy1
    Input Password    ${password}    Dummy2
    Click Element    ${login}
    Wait Until Element Is Visible    //button[@id="btnGrant"]    10
    Click Element    //button[@id="btnGrant"]
