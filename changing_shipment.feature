Feature: Changing shipment

Scenario: Changing shipment on the cart page
  Given product Laminat HPL 4282 WH Delicate Oak is available in stock
  And product Laminat HPL 4282 WH Delicate Oak is added to the cart
  And user clicks "Zobacz koszyk"
  And user scrolls down to "Podsumowanie koszyka"
  When user clicks "Odbiór osobisty" radio button
  Then the price of the order is recalculated 
  And equals to zero PLN