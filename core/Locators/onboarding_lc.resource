*** Settings ***
Documentation    Локаторы для онбординга


*** Variables ***
${ONBORDING_SUBMIT_BTN}    ru.afisha.android:id/fragOnboardinSubmitBtn
${ONBORDING_CONFIRM_CITY_BTN}    android:id/button1
${ONBORDING_NO_CONFIRM_CITY_BTN}    android:id/button2
${CHOOSE_CITY}    //android.widget.TextView[@resource-id="ru.afisha.android:id/itemCitySelectionName" and contains(., "Санкт")]
