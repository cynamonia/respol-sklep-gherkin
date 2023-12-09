Feature: User login

Background: 
  Given user has an active account
  And user is not logged in
  And user is on "Moje konto" page

Scenario: Login with valid credentials 
  When user inputs valid login and password
  And user clicks "Zaloguj się" button 
  Then user is logged in

Scenario: Login with invalid credentials 
  When user inputs invalid login and password
  And user clicks "Zaloguj się" button
  Then user is not logged in 