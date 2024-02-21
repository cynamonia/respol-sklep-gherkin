Feature: Removing items from a shopping cart

Background:
  Given Laminat HPL 4282 WH Delicate Oak is added to the cart

Scenario: User removes product from the cart
  Given the cart page is loaded
  When user clicks "x" mark
  Then the cart page without the product is loaded