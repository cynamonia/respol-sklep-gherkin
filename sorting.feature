Feature: Sorting

Scenario: Sorting products from the lowest price
  Given main page is loaded
  When user clicks "Domyślne sortowanie" 
  And clicks "Sortuj po cenie od najniszej" 
  Then the list of products is sorted from the lowest price