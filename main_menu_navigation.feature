Feature: main menu navigation

Background:
  Given user is on the main page 

Scenario Outline: navigation
  When user clicks <category_name> on main menu
  Then user is navigated to <category_page> page

Examples: 
    | category_name | category_page |
    | Resopal Unity | Resopal Unity |
    | Antybakteryjne Deski do krojenia | Antybakteryjne Deski do krojenia |
    | Akcesoria Meblowe | Akcesoria Meblowe |
    | Laminaty HPL | Laminaty HPL |
    | Kompakt HPL | Kompakt HPL |
    | Zamówienie | Zamówienie |
    | Moje konto | Moje konto |
    | Polyrey Monochrom | Polyrey Monochrom |
    | Koszyk | Koszyk |

Scenario: Kontakt navigation
  When user clicks Kontakt on main menu
  Then user is navigated to https://www.respolhpl.pl/kontakt
  