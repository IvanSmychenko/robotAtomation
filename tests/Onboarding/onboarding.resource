*** Settings ***
Documentation     Кейворды для флоу онбординга
Resource          ../common.resource


*** Keywords ***
Allow Location
    [Documentation]    Разрешить геолокацию

    Wait Until Page Contains Element    ${ONBORDING_SUBMIT_BTN}    timeout=10s
    Click Element    ${ONBORDING_SUBMIT_BTN}

    IF    ${PLATFORM_VERSION} > 9
        Wait Until Page Contains Element    ${PERMISSION_FOREGROUND}
        Click Element    ${PERMISSION_FOREGROUND}
    ELSE
        Wait Until Page Contains Element    ${PERMISSION_ALLOW_OLD}
        Click Element    ${PERMISSION_ALLOW_OLD}
    END

Deny Location
    [Documentation]    Запретить геолокацию

    Wait Until Page Contains Element    ${ONBORDING_SUBMIT_BTN}    timeout=10s
    Click Element    ${ONBORDING_SUBMIT_BTN}
    Wait Until Page Contains Element    ${PERMISSION_DENY_BUTTON}
    Click Element    ${PERMISSION_DENY_BUTTON}

Confirm Town
    [Documentation]    Подтвердить выбранный город

    Wait Until Page Contains Element    ${ONBORDING_CONFIRM_CITY_BTN}
    Click Element    ${ONBORDING_CONFIRM_CITY_BTN}

Change Town
    [Documentation]    Сменить город

    Wait Until Page Contains Element    ${ONBORDING_NO_CONFIRM_CITY_BTN}
    Click Element    ${ONBORDING_NO_CONFIRM_CITY_BTN}
    Wait Until Page Contains Element    ${CHOOSE_CITY}
    Click Element    ${CHOOSE_CITY}

Allow Notifications
    [Documentation]    Разрешить уведомления

    Wait Until Page Contains Element    ${ONBORDING_SUBMIT_BTN}
    Click Element    ${ONBORDING_SUBMIT_BTN}

    Wait Until Page Contains Element    ${PERMISSION_ALLOW}
    Click Element    ${PERMISSION_ALLOW}
