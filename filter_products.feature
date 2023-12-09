Feature: fliter products by price

Scenario: filtering products by price
  Given main page is loaded
  When the price filter range is changed to 20-40 zł
  And user clicks "Filtruj"
  Then the list of products is filtered