Feature: Laptops & Notebooks Feature
  In Order to perform laptops & notebooks features
  As a User
  I have to verify that product is sorting according to the price high to low
  I have to place order successfully

  @sanity @smoke @regression
  Scenario: User should see the products as price high to low
    Given I am on homepage
    When I mouse hover and click on topmenu options "Laptops & Notebooks"
    And I mouse hover and click on topmenu sub options "Show All Laptops & Notebooks"
    And I select filter option as "Price (High > Low)"
    Then I should get the product arranged in price high to low order

  @smoke @regression
  Scenario: User should see the products as price high to low
    Given I am on homepage
    When I mouse hover and click on topmenu options "Laptops & Notebooks"
    And I mouse hover and click on topmenu sub options "Show All Laptops & Notebooks"
    And I select filter option as "Price (High > Low)"
    And I click on MacBook product
    And I should navigate to MacBook page and see the page heading "MacBook"
    And I click on Add to Cart
    And I should see the success add to cart message
    And I click on shopping cart link in success message
    And I should navigate to shopping cart page and see the welcome message
    And I should see the product name "MacBook" in the shopping cart
    And I change the quantity to two "2"
    And I click on update tab
    And I should see the shopping cart updated message
    And I should see the total price "$1,204.00"
    And I click on checkout button
    And I should redirected to the checkout page and see the checkout "Checkout"text
    And I should see the new customer "New Customer" text
    And I click on guest checkout
    And I click on continue
    And I enter first name "Meet" in billing details
    And I enter last name "Patel" in billing details
    And I enter email address in billing details
    And I enter phone number "076543212364" in the billing details
    And I enter billing address "11 Harrow Road" in the billing details
    And I enter city "Harrow" in the billing details
    And I enter postcode "HA91SF"  in the billing details
    And I enter country "United Kingdom" in the billing details
    And I enter state "Aberdeen" in the billing details
    And I click on continue in the billing details
    And I enter comment "Nothing specific" in the comment area
    And I click on terms and conditions checkbox
    And I click on continue in comment section
    Then I should check for the payment warning method