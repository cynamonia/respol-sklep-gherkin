Feature: main page paging

Background: 
  Given there is six pages of products on main page

Scenario Outline: next page arrow navigation
  Given user is on page <page_number>
  When user clicks the next page arrow
  Then user is navigated to page <next_page_number>

Scenarios: 
  | page_number | next_page_number |
  | 1 | 2 |
  | 2 | 3 |
  | 3 | 4 |
  | 4 | 5 |
  | 5 | 6 |

Scenario Outline: previous page arrow navigation
  Given user is on page <page_number>
  When user clicks the next page arrow
  Then user is navigated to page <previous_page_number>

Scenarios:
  | page_number | previous_page_number |
  | 6 | 5 |
  | 5 | 4 |
  | 4 | 3 |
  | 3 | 2 |
  | 2 | 1 |

Scenario Outline: navigation by clicking page number
  Given user is on the first page of main page
  When user clicks <page_number> button 
  Then the page <page_number> is loaded

Scenarios:
  | page_number |
  | 2 |
  | 3 |
  | 4 |
  | 5 |
  | 6 |

Scenario: visibility of the previous page arrow on the first page
  When user is on the first page of main page 
  Then the previous page arrow is not visible

Scenario: visibility of the next page arrow on the last page
  When user is on the last page of main page
  Then the next page arrow is not visible 
