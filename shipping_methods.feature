Feature: Shipping methods

Scenario: Available shipping methods
  Given Laminat HPL 4282 WH Delicate Oak is in the cart
  And user is on cart page
  When user scrolls down to "Podsumowanie koszyka"
  Then shipment options are visible
  And available options are “GLS kurier” and “Odbiór osobisty”