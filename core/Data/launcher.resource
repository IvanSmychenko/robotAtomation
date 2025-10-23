*** Settings ***
Documentation    Конфигурация запуска устройства для тестов

Library     AppiumLibrary


*** Variables ***
${CONNECTION_URL}    http://127.0.0.1:4723    # Адресс сервера
${AUTOMATION_NAME}    UiAutomator2    # Драйвер автоматизации
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    16
${DEVICE_NAME}    Pixel 7
${UDID}    2C161FDH200DL6    # Можно найти через adb devices
${APP_PACKAGE}    ru.afisha.android
${APP_ACTIVITY}    ru.afishaog.android.presentation.app.AppActivity


*** Keywords ***
Open App
    [Documentation]    Старт приложения на устройстве с конфигурацией сетевого слоя
    Open Application
    ...    remote_url=${CONNECTION_URL}
    ...    automationName=${AUTOMATION_NAME}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    udid=${UDID}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
