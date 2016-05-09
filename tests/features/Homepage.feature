@api
Feature: The homepage displays appropriate content.
  Given I am an anonymous user
  When I visit "/"
  Then I should see "Welcome to Site-Install"
  And I should not see "Add content"

Scenario: An admin user views the homepage
  Given I am logged in as a user with the "administrator" role
  When I visit "/"
  Then I should see "Welcome to mysite"
  And I should see "Add content"
