*** Settings ***
Documentation     This robot opens Notepad, types some text, and saves the file.
Library           RPA.Windows
Library           RPA.FileSystem
Library           OperatingSystem

*** Variables ***
${FILE_NAME}=     Signata.txt
${TEXT}=          Hello, Welcome to Signata  !!!!

*** Tasks ***
Open Notepad, type text, and save the file
    Open Notepad
    Type the text
    Save the file as ${FILE_NAME}
    Close Notepad

*** Keywords ***
Open Notepad
    Windows Search    Notepad
    Sleep    2s

Type the text
    Send Keys    keys=${TEXT}
    Sleep    1s

Save the file as ${FILE_NAME}
    Send Keys    keys={CTRL}s
    Sleep    1s
    Send Keys    keys=${FILE_NAME}
    Send Keys    keys={ENTER}
    Sleep    2s

Close Notepad
    Send Keys    keys={ALT}{F4}
