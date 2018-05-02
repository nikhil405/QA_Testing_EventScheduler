@login
Feature: As a End-user
I should be able to validate login of the application
					
@invalid_login
Scenario:Login with Invalid Email and Password
Given I am on Event Scheduler home page
When I login with invalid details
Then  I should be able to see Error "Email id and password does not match"