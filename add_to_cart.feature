Feature: Add to the cart

Background:
  Given product is available in stock 
  And Laminat HPL 4282 WH Delicate Oak is loaded

Scenario: Pop-up window is visible after adding product to the cart
  When user clicks "Dodaj do koszyka"
  Then success message pop-up window is shown

# not sure if should be given or few whens
Scenario: Open the cart from pop-up window
  Given Laminat HPL 4282 WH Delicate Oak is added to the cart
  And the success message pop-up window is shown
  When user clicks "Zobacz koszyk" on pop-up window
  Then the cart page is loaded with correct product in it
  
# not sure if should be given or few whens
Scenario: Open the cart from main menu
  Given Laminat HPL 4282 WH Delicate Oak is added to the cart
  When user clicks "Koszyk" on main menu
  Then the cart page is loaded with correct product in it