@signup
Feature: As a End-user
I should be able to validate signup to the application
So that I should login to the application
					
@invalid_signup
Scenario: Trying to Create an user with Invalid details
Given I am on Event Scheduler home page
When I signup with invalid details
Then  I should be able to see Error message