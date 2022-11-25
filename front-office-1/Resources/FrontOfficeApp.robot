*** Settings ***
Library  ../Libraries/MyCustomLibrary.py
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Team.robot

*** Variables ***


*** Keywords ***
Do Some Custom Thing
    Do something special

Go to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Go to "Team" Page
    TopNav.Select "Team" Page
    ${ReturnedInfo} =  Team.Verify Page Loaded
    Log  ${ReturnedInfo}

Validate "Team" Page
    Team.Validate Page Contents
