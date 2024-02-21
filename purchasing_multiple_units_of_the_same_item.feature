Feature: Purchasing multiple units of the same item

Background: 
  Given many units of the product are in stock
  And 15 units of the product is in the cart
  And the cart page is loaded

Scenario Outline: Credit card payment
  Given <shipping_method> is chosen
  When "Przejdź do płatności" is clicked
  And "Dane płatności" form is filled
  And credit card details are filled
  And "Przeczytałem/przeczytałam regulamin" is checked
  And user clicks "Kupuję i płacę"
  And payment is successfull
  Then order summary is loaded

Examples:
  |shipping_method|
  |GLS kurier|
  |odbiór osobisty|
  
Scenario Outline: "Przelew bankowy" payment
  Given <shipping_method> is chosen
  When "Przejdź do płatności" is clicked
  And "Dane płatności" form is filled
  And "Przelew bankowy" is chosen
  And "Przeczytałem/przeczytałam regulamin" is checked
  And user clicks "Kupuję i płacę"
  Then order summary is loaded
  And bank transfer details are visible

Examples:
  |shipping_method|
  |GLS kurier|
  |odbiór osobisty|

Scenario Outline: "Przelewy24" payment
  Given <shipping_method> is chosen
  When "Przejdź do płatności" is clicked
  And "Dane płatności" form is filled
  And "Przelewy24 (P24)" is chosen
  And payment service provider is chosen
  And "Przeczytałem/przeczytałam regulamin" is checked
  And user clicks "Kupuję i płacę"
  And payment is successfull
  Then order summary is loaded

Examples:
  |shipping_method|
  |GLS kurier|
  |odbiór osobisty|
