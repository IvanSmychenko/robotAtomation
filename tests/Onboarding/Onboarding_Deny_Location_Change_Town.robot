*** Settings ***
Documentation    Подключение старта, предисловий, постусловия и закрытия приложения

Resource            onboarding.resource
Suite Setup         common.Suite Setup
Suite Teardown      common.Suite Teardown
Test Setup          common.Launch App
Test Teardown       common.Close App


*** Test Cases ***
Allow Location And Change Town
    [Documentation]    Онбординг с запретом геолокации и сменой города
    launcher.Open App
    onboarding.Deny Location
    onboarding.Change Town
    IF    ${PLATFORM_VERSION} >= 13    onboarding.Allow Notifications
    Wait Until Page Contains Element    ${VERTICAL_FEATURED_IMAGE}
