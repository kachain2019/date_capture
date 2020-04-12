*** Settings ***
Library  DateTime
Library  SeleniumLibrary

*** Test Cases ***
Get Time 
    ${year}  ${month}  ${day}  ${hour}  ${minute}  ${second}  Get Time   year month day hour minute second
    ${year}    Convert To Integer  ${year}
    ${date_time}    Set Variable    ${year-10}-${month}-${day} ${hour}:${minute}:${second} 
    Log To Console      \n${date_time}
Get Current Date UTC 
    ${date}=      Get Current Date      UTC        exclude_millis=yes
    ${plus14}=      Add Time To Date      ${date}      14 days
    ${future}      Convert Date      ${plus14}      result_format=%a %B %d %H:%M:%S UTC %Y
    Log      ${future}      console=yes







