Feature: Search functionality on main menu

Scenario: Using the search functionality
  Given main page is loaded
  When user clicks search input field on main menu
  And types "Stolik" on its keyboard
  And clicks search icon
  Then only “Stolik” products are loaded