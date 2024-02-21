Feature: Fulfilling an order as an admin

Background:
    Given admin is logged in
    And order list page contains order in progress

Scenario: Fulfilling an order
    Given order list page is loaded
    When admin selected the order in progress
    And droped-down the order status list
    And chosen "Zrealizowane" the order status
    Then the order status is fulfilled