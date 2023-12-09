Feature: price filter seekbar

Scenario: adjusting price by filter seekbar
  Given main page is loaded
  When user clicks on the middle of the “Filtruj wg ceny” seekbar
  Then indicator slides and the price range changes